ATT.PrintName = ".45 Colt"
ATT.FullName = "Remington M1858 .45 Colt Cylinder"

ATT.Icon = Material("entities/tacrp_att_ammo_1858_45colt.png", "mips smooth")
ATT.Description = "Replacement cylinder loading overpressured brass rounds."
ATT.Pros = {"stat.damage", "stat.range_min", "att.procon.armor"}
ATT.Cons = {"rating.control", "att.procon.unreliable"}

ATT.Category = "ammo_1858"

ATT.SortOrder = 1

ATT.Add_ArmorPenetration = 0.15

ATT.Add_Range_Min = 200
ATT.Add_RecoilVisualKick = 1
ATT.Add_RecoilKick = 4

ATT.Mult_Damage_Max = 1.25
ATT.Mult_Damage_Min = 1.25
ATT.Add_Damage_Min = 5

ATT.Add_JamFactor = 1

ATT.Add_Pitch_Shoot = 7