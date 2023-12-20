AddCSLuaFile()

ENT.Base                     = "tacrp_proj_gyrojet"
ENT.PrintName                = "LV Gyrojet Round"
ENT.Spawnable                = false

ENT.SmokeTrail = true
ENT.FlareColor = Color(255, 255, 200, 100)
ENT.FlareLife = 0.2

local smokeimages = {"particle/smokesprites_0001", "particle/smokesprites_0002", "particle/smokesprites_0003", "particle/smokesprites_0004", "particle/smokesprites_0005", "particle/smokesprites_0006", "particle/smokesprites_0007", "particle/smokesprites_0008", "particle/smokesprites_0009", "particle/smokesprites_0010", "particle/smokesprites_0011", "particle/smokesprites_0012", "particle/smokesprites_0013", "particle/smokesprites_0014", "particle/smokesprites_0015", "particle/smokesprites_0016"}
local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end

function ENT:MakeSmoke()
    local emitter = ParticleEmitter(self:GetPos())

    local smoke = emitter:Add(GetSmokeImage(), self:GetPos())

    smoke:SetStartAlpha(45)
    smoke:SetEndAlpha(0)

    smoke:SetStartSize(2)
    smoke:SetEndSize(math.Rand(8, 16))

    smoke:SetRoll(math.Rand(-180, 180))
    smoke:SetRollDelta(math.Rand(-1, 1))

    smoke:SetPos(self:GetPos())
    smoke:SetVelocity(-self:GetAngles():Forward() * 150 + (VectorRand() * 5))

    smoke:SetColor(255, 255, 255)
    smoke:SetLighting(true)

    smoke:SetDieTime(math.Rand(0.2, 0.4))

    smoke:SetGravity(Vector(0, 0, 0))

    emitter:Finish()
end