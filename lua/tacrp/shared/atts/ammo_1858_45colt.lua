ATT.PrintName = ".45 Colt"
ATT.FullName = "Remington 1858 .45 Colt Conversion"

ATT.Icon = Material("entities/tacrp_att_ammo_1858_45colt.png", "mips smooth")
ATT.Description = "Cartridge conversion firing larger, more powerful, but less reliable rounds."
ATT.Pros = {"stat.damage", "stat.range_min", "att.procon.armor"}
ATT.Cons = {"rating.control", "att.procon.unreliable"}

ATT.Category = "ammo_1858"

ATT.SortOrder = 1

ATT.Add_ArmorPenetration = 0.15

ATT.Add_Range_Min = 200
ATT.Add_RecoilVisualKick = 1
ATT.Add_RecoilKick = 4
ATT.Mult_RecoilStability = 0.25
ATT.Mult_MuzzleVelocity = 1.25

ATT.Mult_Damage_Max = 1.25
ATT.Mult_Damage_Min = 1.25
ATT.Add_Damage_Min = 5

ATT.Add_JamFactor = 2

ATT.Add_Pitch_Shoot = 7

ATT.InstalledElements = {"cylinder"}

ATT.Override_Sound_Shoot = "^tacint_shark/weapons/1858/nma_fire_45.wav"