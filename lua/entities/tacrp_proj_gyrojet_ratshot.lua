AddCSLuaFile()

ENT.Base                     = "tacrp_proj_gyrojet"
ENT.PrintName                = "Ratshot Gyrojet Round"
ENT.Spawnable                = false

ENT.SmokeTrail = true
ENT.FlareColor = Color(155, 155, 255, 255)
ENT.FlareLife = 0.5

function ENT:Impact(data, collider)

    local ang = data.OurOldVelocity:Angle()
    local fx = EffectData()
    fx:SetOrigin(data.HitPos)
    fx:SetNormal(-ang:Forward())
    fx:SetAngles(-ang)
    util.Effect("MetalSpark", fx)

    local attacker = self.Attacker or self:GetOwner() or self
    local inflictor = attacker.GetWeapon and attacker:GetWeapon("tacrp_sd_gyrojet")
    local dmg = inflictor and inflictor:GetValue("Damage_Max") or 40
    self:FireBullets({
        Attacker = attacker,
        Inflictor = inflictor or self,
        Force = 5,
        Num = 1,
        Tracer = 0,
        Dir = data.OurOldVelocity:GetNormalized(),
        Src = data.HitPos,
        Damage = dmg,
        HullSize = 2,
        Callback = function(att, btr, dmginfo)
            if IsValid(btr.Entity) then
                if inflictor then
                    local range = (btr.HitPos - btr.StartPos):Length()
                    inflictor:AfterShotFunction(btr, dmginfo, range, inflictor:GetValue("Penetration"), {})
                end
            else
                -- Even though bullet did not hit, projectile did; just apply damage
                if attacker:IsNPC() and !TacRP.ConVars["npc_equality"]:GetBool() then
                    dmg:ScaleDamage(0.25)
                end
                data.HitEntity:TakeDamageInfo(dmginfo)
            end

        end
    })

    self:Remove()
    return true
end

function ENT:OnThink()
    if SERVER and (self.NextTrace or 0) < CurTime() and (CurTime() - self.SpawnTime) >= 0.1 then
        self.NextTrace = CurTime() + 0.05

        local tr = util.TraceHull({
            start = self:GetPos(),
            endpos = self:GetPos() + self:GetVelocity():GetNormalized() * 1024,
            mins = Vector(-8, -8, -8),
            maxs = Vector(8, 8, 8),
            filter = {self, self:GetOwner()},
            mask = MASK_SHOT_HULL,
        })

        if tr.Hit then
            self:Detonate()
        end
    end
end

function ENT:Detonate()
    local dir = self:GetForward()
    local attacker = self.Attacker or self:GetOwner() or self
    local inflictor = attacker.GetWeapon and attacker:GetWeapon("tacrp_sd_gyrojet")
    local damage = inflictor and inflictor:GetValue("Damage_Max") or 50
    if attacker:IsNPC() and !TacRP.ConVars["npc_equality"]:GetBool() then
        damage = damage * 0.25
    end
    local src = self:GetPos() - dir * 64
    local fx = EffectData()
    fx:SetOrigin(src)

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        fx:SetMagnitude(4)
        fx:SetScale(1.5)
        fx:SetRadius(4)
        fx:SetNormal(dir)
        util.Effect("Sparks", fx)

        local tr = util.TraceHull({
            start = src,
            endpos = src + dir * 2048,
            filter = self,
            mins = Vector(-16, -16, -8),
            maxs = Vector(16, 16, 8)
        })
        fx:SetMagnitude(4)
        fx:SetScale(1)
        fx:SetRadius(2)
        fx:SetNormal(dir)
        for i = 1, math.floor(tr.Fraction * 3) do
            fx:SetOrigin(tr.StartPos + tr.Normal * (i / 3) * 1024)
            util.Effect("Sparks", fx)
        end
    end

    self:FireBullets({
        Attacker = attacker,
        Damage = 5,
        Force = 1,
        Distance = 1024,
        HullSize = 16,
        Num = 48,
        Tracer = 1,
        Src = src,
        Dir = dir,
        Spread = Vector(1, 1, 0),
        IgnoreEntity = self,
    })
    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_BULLET + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    for _, ent in pairs(ents.FindInCone(src, dir, 1024, 0.707)) do
        local tr = util.QuickTrace(src, ent:GetPos() - src, {self, ent})
        if tr.Fraction == 1 then
            dmg:SetDamage(damage * math.Rand(0.5, 0.75) * Lerp((ent:GetPos():DistToSqr(src) / 4194304) ^ 0.5, 1, 0.25))
            if !ent:IsOnGround() then dmg:ScaleDamage(1.5) end
            ent:TakeDamageInfo(dmg)
        end
    end

    util.BlastDamage(self, attacker, src, 256, damage * 0.25)

    self:EmitSound(table.Random(self.ExplodeSounds), 90, 110, 0.75)
    self:EmitSound("physics/metal/metal_box_break1.wav", 90, 175)

    self:Remove()
end