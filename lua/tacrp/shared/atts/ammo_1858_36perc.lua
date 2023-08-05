ATT.PrintName = ".36 Percussion"
ATT.FullName = "Remington 1858 .36 Caliber Conversion"

ATT.Icon = Material("entities/tacrp_att_ammo_1858_36perc.png", "mips smooth")
ATT.Description = "Caliber conversion firing smaller rounds with better range."
ATT.Pros = {"stat.range", "stat.recoil", "stat.rpm"}
ATT.Cons = {"stat.damage_max", "att.procon.armor"}

ATT.Category = "ammo_1858"

ATT.SortOrder = 2
ATT.Ammo = "pistol"

ATT.Mult_ArmorBonus = 0.5

ATT.Mult_Range_Max = 1.5
ATT.Mult_Range_Min = 2
ATT.Mult_Spread = 0.75

ATT.Mult_RecoilVisualKick = 0.75
ATT.Mult_RecoilKick = 0.5

ATT.Mult_Damage_Max = 0.8

ATT.Mult_RPM = 1.15
ATT.Mult_ShootTimeMult = 0.85

ATT.Add_Pitch_Shoot = -5