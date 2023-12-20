AddCSLuaFile()

ENT.Base                     = "tacrp_proj_gyrojet"
ENT.PrintName                = "Ratshot Gyrojet Round"
ENT.Spawnable                = false

ENT.SmokeTrail = true
ENT.FlareColor = Color(155, 155, 255, 255)
ENT.FlareLife = 0.4

DEFINE_BASECLASS(ENT.Base)

function ENT:Initialize()
    BaseClass.Initialize(self)
    if SERVER then
        self:SetTrigger(true)
        self:UseTriggerBounds(true, 48)
    end
end

function ENT:StartTouch(ent)
    if SERVER and ent ~= self:GetOwner() and (ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) then
        self:Detonate()
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
    local src = self:GetPos() -- + dir * 32
    local fx = EffectData()
    fx:SetOrigin(src)

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        fx:SetMagnitude(4)
        fx:SetScale(4)
        fx:SetRadius(8)
        fx:SetNormal(dir)
        util.Effect("Sparks", fx)
        util.Effect("HelicopterMegaBomb", fx)
    end

    util.BlastDamage(self, attacker, src, 200, damage)

    self:EmitSound(table.Random(self.ExplodeSounds), 90, 110, 0.75)
    self:EmitSound("physics/metal/metal_box_break1.wav", 90, 175)

    self:Remove()
end