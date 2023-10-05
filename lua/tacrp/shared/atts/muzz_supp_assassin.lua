ATT.PrintName = "A. Suppressor"
ATT.FullName = "Assassin Suppressor"
ATT.Icon = Material("entities/tacrp_att_muzz_supp_assassin.png", "mips smooth")
ATT.Description = "Extended suppressor improving range significantly at cost of stability."
ATT.Pros = {"stat.vol_shoot", "stat.range", "stat.muzzlevelocity"}
ATT.Cons = {"stat.recoil",  "rating.handling"}

ATT.Model = "models/weapons/tacint_shark/addons/suppressor_assassin.mdl"
ATT.Scale = 1.4

ATT.ModelOffset = Vector(0, 0, 0.05)

ATT.Category = "silencer"

ATT.SortOrder = 6

ATT.Add_Vol_Shoot = -25
ATT.Add_Range_Min = 500
ATT.Mult_Range_Max = 1.5
ATT.Mult_Range_Min = 1.5
ATT.Add_MuzzleVelocity = 5000
ATT.Mult_MuzzleVelocity = 1.1
ATT.Mult_RecoilKick = 1.25
ATT.Add_RecoilKick = 1
ATT.Mult_RecoilDissipationRate = 0.75

ATT.Add_SprintToFireTime = 0.03
ATT.Add_AimDownSightsTime = 0.03
ATT.Add_DeployTimeMult = 0.25

ATT.Add_Pitch_Shoot = 5

ATT.Silencer = true
ATT.Override_MuzzleEffect = "muzzleflash_suppressed"