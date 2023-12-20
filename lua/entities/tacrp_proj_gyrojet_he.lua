AddCSLuaFile()

ENT.Base                     = "tacrp_proj_gyrojet"
ENT.PrintName                = "HE Gyrojet Round"
ENT.Spawnable                = false

ENT.SmokeTrail = true
ENT.FlareColor = Color(255, 200, 128, 100)
ENT.FlareLife = 0.5


function ENT:Impact(data, collider)
    return false
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner() or self
    local inflictor = attacker.GetWeapon and attacker:GetWeapon("tacrp_sd_gyrojet")
    local dmg = inflictor and inflictor:GetValue("Damage_Max") or 50
    if attacker:IsNPC() and !TacRP.ConVars["npc_equality"]:GetBool() then
        dmg = dmg * 0.25
    end

    util.BlastDamage(self, attacker, self:GetPos(), 128, dmg)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())
    fx:SetNormal(self:GetForward())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("HelicopterMegaBomb", fx)
    end

    self:EmitSound(table.Random(self.ExplodeSounds), 80, 110, 0.75)

    self:Remove()
end
