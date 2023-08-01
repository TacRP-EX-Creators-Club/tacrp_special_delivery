ATT.PrintName = "Rimfire"
ATT.FullName = "Remington M1858 .46 Rimfire Cylinder"

ATT.Icon = Material("entities/tacrp_att_ammo_pistol_ap.png", "mips smooth")
ATT.Description = "Replacement cylinder loading overpressured brass rounds."
ATT.Pros = {"stat.damage", "stat.range_min", "stat.spread"}
ATT.Cons = {"rating.control", "att.procon.unreliable"}

ATT.Category = "ammo_1858"

ATT.SortOrder = 1

ATT.Add_Range_Min = 200
ATT.Mult_Spread = 0.75
ATT.Add_RecoilVisualKick = 1
ATT.Add_RecoilKick = 4

ATT.Mult_Damage_Max = 1.25
ATT.Mult_Damage_Min = 1.25
ATT.Add_Damage_Min = 5

ATT.Add_JamFactor = 1