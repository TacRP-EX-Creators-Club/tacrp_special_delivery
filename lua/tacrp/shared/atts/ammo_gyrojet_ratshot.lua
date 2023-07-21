ATT.PrintName = "Ratshot"
ATT.FullName = "13mm Ratshot Mini-Rockets"

ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "Proximity fuse airburst mini-rockets. For rodents of unexpected size."
ATT.Pros = {"att.procon.airburst"}
ATT.Cons = {"stat.damage", "stat.muzzlevelocity", "stat.rpm"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 4

ATT.Mult_Damage_Max = 0.5
ATT.Mult_Damage_Min = 0.5

ATT.Mult_ShootEntForce = 0.5

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_ratshot"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end