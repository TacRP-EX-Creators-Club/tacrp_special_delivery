ATT.PrintName = "LV"
ATT.FullName = "11mm Low Velocity Mini-Rockets"

ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "Projectiles with reduced diameter and velocity, leaving a less visible trail."
ATT.Pros = {"att.procon.reliability", "stat.clipsize", "stat.rpm"}
ATT.Cons = {"stat.damage", "stat.muzzlevelocity"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 1

ATT.Mult_Damage_Max = 0.6
ATT.Mult_Damage_Min = 0.6
ATT.Mult_RPM = 1.25

ATT.Add_JamFactor = -0.25

ATT.Add_ClipSize = 4
ATT.Mult_ShootEntForce = 0.85

ATT.ShootEnt = "tacrp_proj_gyrojet_lv"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end