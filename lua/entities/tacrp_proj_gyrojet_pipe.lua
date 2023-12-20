AddCSLuaFile()

ENT.Base                     = "tacrp_proj_gyrojet"
ENT.PrintName                = "Gyrojet Pipe Grenade"
ENT.Spawnable                = false

ENT.Model = "models/Items/AR2_Grenade.mdl"
ENT.CollisionSphere = false

ENT.SmokeTrail = true
ENT.FlareColor = Color(255, 200, 128, 100)
ENT.FlareLife = 0.1

ENT.IsRocket = false
ENT.InstantFuse = true
ENT.ImpactFuse = false
ENT.Delay = 1.5

ENT.AudioLoop = false

function ENT:Impact(data, collider)
    if IsValid(data.HitEntity) and (data.HitEntity:IsPlayer() or data.HitEntity:IsNPC() or data.HitEntity:IsNextBot()) then
        self:Detonate()
    end
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner() or self
    local inflictor = attacker.GetWeapon and attacker:GetWeapon("tacrp_sd_gyrojet")
    local dmg = inflictor and inflictor.GetValue and inflictor:GetValue("Damage_Max") or 75
    if attacker:IsNPC() and !TacRP.ConVars["npc_equality"]:GetBool() then
        dmg = dmg * 0.25
    end

    util.BlastDamage(self, attacker, self:GetPos(), 150, dmg)

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

function ENT:PhysicsUpdate(phys)
end


local smokeimages = {"particle/smokesprites_0001", "particle/smokesprites_0002", "particle/smokesprites_0003", "particle/smokesprites_0004", "particle/smokesprites_0005", "particle/smokesprites_0006", "particle/smokesprites_0007", "particle/smokesprites_0008", "particle/smokesprites_0009", "particle/smokesprites_0010", "particle/smokesprites_0011", "particle/smokesprites_0012", "particle/smokesprites_0013", "particle/smokesprites_0014", "particle/smokesprites_0015", "particle/smokesprites_0016"}
local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end

function ENT:MakeSmoke()
    local emitter = ParticleEmitter(self:GetPos())

    local smoke = emitter:Add(GetSmokeImage(), self:GetPos())

    smoke:SetStartAlpha(2)
    smoke:SetEndAlpha(0)

    smoke:SetStartSize(4)
    smoke:SetEndSize(math.Rand(10, 12))

    smoke:SetRoll(math.Rand(-180, 180))
    smoke:SetRollDelta(math.Rand(-1, 1))

    smoke:SetPos(self:GetPos())
    smoke:SetVelocity(VectorRand() * 25)

    smoke:SetColor(255, 255, 255)
    smoke:SetLighting(false)

    smoke:SetDieTime(math.Rand(0.6, 0.8))

    smoke:SetGravity(Vector(0, 0, 256))

    emitter:Finish()
end