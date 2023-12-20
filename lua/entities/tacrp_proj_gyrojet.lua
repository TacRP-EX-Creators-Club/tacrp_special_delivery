AddCSLuaFile()

ENT.Base                     = "tacrp_proj_base"
ENT.PrintName                = "Gyrojet Round"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/tacint_shark/projectiles/gyrojet_rocket.mdl"
ENT.CollisionSphere = 2

ENT.IsRocket = true

ENT.InstantFuse = false
ENT.RemoteFuse = false
ENT.ImpactFuse = true

ENT.ExplodeOnDamage = false
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0

ENT.AudioLoop = "TacRP/weapons/rpg7/rocket_flight-1.wav"

ENT.SmokeTrail = true
ENT.FlareColor = Color(255, 128, 0, 100)
ENT.FlareLife = 0.5

ENT.ExplodeSounds = {
    "^TacRP/weapons/grenade/40mm_explode-1.wav",
    "^TacRP/weapons/grenade/40mm_explode-2.wav",
    "^TacRP/weapons/grenade/40mm_explode-3.wav",
}

ENT.ImpactDamage = 0

local smokeimages = {"particle/smokesprites_0001", "particle/smokesprites_0002", "particle/smokesprites_0003", "particle/smokesprites_0004", "particle/smokesprites_0005", "particle/smokesprites_0006", "particle/smokesprites_0007", "particle/smokesprites_0008", "particle/smokesprites_0009", "particle/smokesprites_0010", "particle/smokesprites_0011", "particle/smokesprites_0012", "particle/smokesprites_0013", "particle/smokesprites_0014", "particle/smokesprites_0015", "particle/smokesprites_0016"}
local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end

function ENT:MakeSmoke()
    local emitter = ParticleEmitter(self:GetPos())

    local smoke = emitter:Add(GetSmokeImage(), self:GetPos())

    smoke:SetStartAlpha(55)
    smoke:SetEndAlpha(0)

    smoke:SetStartSize(4)
    smoke:SetEndSize(math.Rand(16, 24))

    smoke:SetRoll(math.Rand(-180, 180))
    smoke:SetRollDelta(math.Rand(-1, 1))

    smoke:SetPos(self:GetPos())
    smoke:SetVelocity(-self:GetAngles():Forward() * 200 + (VectorRand() * 5)
            + self:GetAngles():Right() * math.sin(CurTime() * math.pi * 16) * 32
            + self:GetAngles():Up() * math.cos(CurTime() * math.pi * 16) * 32)

    smoke:SetColor(255, 255, 255)
    smoke:SetLighting(true)

    smoke:SetDieTime(math.Rand(0.4, 0.6))

    smoke:SetGravity(Vector(0, 0, 0))

    emitter:Finish()
end

function ENT:Think()
    if !IsValid(self) or self:GetNoDraw() then return end

    if CurTime() - self.SpawnTime >= self.FlareLife then
        self.FlareColor = false
    end

    if !self.SpawnTime then
        self.SpawnTime = CurTime()
    end

    if !self.Armed and isnumber(self.TimeFuse) and self.SpawnTime + self.TimeFuse < CurTime() then
        self.ArmTime = CurTime()
        self.Armed = true
    end

    if self.Armed and self.ArmTime + self.Delay < CurTime() then
        self:PreDetonate()
    end

    if self.ExplodeUnderwater and self:WaterLevel() > 0 then
        self:PreDetonate()
    end

    if CLIENT and self.SmokeTrail and CurTime() - self.SpawnTime >= 0.1 then
        self:MakeSmoke()
    end

    self:OnThink()
end

function ENT:Impact(data, collider)

    local ang = data.OurOldVelocity:Angle()
    local fx = EffectData()
    fx:SetOrigin(data.HitPos)
    fx:SetNormal(-ang:Forward())
    fx:SetAngles(-ang)
    util.Effect("MetalSpark", fx)

    local attacker = self.Attacker or self:GetOwner() or self
    local inflictor = attacker.GetWeapon and attacker:GetWeapon("tacrp_sd_gyrojet")
    local dmg = inflictor and inflictor.GetValue and inflictor:GetValue("Damage_Max") or 75
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
                if IsValid(inflictor) and inflictor.GetValue then
                    local range = (btr.HitPos - btr.StartPos):Length()
                    inflictor:AfterShotFunction(btr, dmginfo, range, inflictor:GetValue("Penetration"), {})
                end
            else
                -- Even though bullet did not hit, projectile did; just apply damage
                if attacker:IsNPC() and !TacRP.ConVars["npc_equality"]:GetBool() then
                    dmginfo:ScaleDamage(0.25)
                end
                data.HitEntity:TakeDamageInfo(dmginfo)
            end

        end
    })

    self:Remove()
    return false
end

function ENT:Detonate()
    self:Remove()
end

function ENT:PhysicsUpdate(phys)
    local len = phys:GetVelocity():Length()
    local f = math.Clamp(len / 4000, 0, 1)
    phys:AddVelocity(self:GetForward() * Lerp(f, 10, 1))
end

local mat = Material("sprites/light_glow02_add")

function ENT:Draw()
    self:DrawModel()

    if self.FlareColor then
        local s = Lerp(((CurTime() - self.SpawnTime) / self.FlareLife) ^ 0.5, 1, 0)
        local s1, s2 = 32 * s, 64 * s
        render.SetMaterial(mat)
        render.DrawSprite(self:GetPos() + (self:GetAngles():Forward() * -4), math.Rand(s1, s2), math.Rand(s1, s2), self.FlareColor)
    end
end