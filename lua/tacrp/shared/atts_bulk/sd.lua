local ATT = {}

------------------------------
-- #region trigger_dual_uzis_semi (Marksman Trigger)
------------------------------
ATT = {}
ATT.PrintName = "att.trigger_semi.name"
ATT.FullName = "att.trigger_semi.name.full"
ATT.Icon = Material("entities/tacrp_att_trigger_semi.png", "mips smooth")
ATT.Description = "att.trigger_semi.desc"
ATT.Pros = {"stat.damage", "stat.spread", "rating.control"}
ATT.Cons = {"att.procon.semi", "stat.rpm"}

ATT.InvAtt = "trigger_semi"
ATT.Category = {"trigger_dual_uzis"}

ATT.SortOrder = 0.1

ATT.Override_Firemodes = {1}

ATT.Add_RecoilStability = 0.3
ATT.Mult_RecoilKick = 0.75
ATT.Mult_RecoilSpreadPenalty = 0.85
ATT.Mult_Spread = 0.75

ATT.Add_Damage_Max = 3
ATT.Add_Damage_Min = 2

ATT.Mult_RPM = 0.75

TacRP.LoadAtt(ATT, "trigger_dual_uzis_semi")

------------------------------
-- #region tac_1858_spin (Cowboy Tricks/Spin)
------------------------------
ATT = {}
ATT.PrintName = "att.tac_1858_spin.name"
ATT.FullName = "att.tac_1858_spin.name.full"
ATT.Icon = Material("entities/tacrp_sd_1858.png", "mips smooth")
ATT.Description = "att.tac_1858_spin.desc"
ATT.Pros = {"att.procon.yeehaw"}

ATT.Category = "tac_1858"
ATT.SortOrder = 1
ATT.Free = true

ATT.Override_Sound_ToggleTactical = ""
ATT.CanToggle = true
ATT.CustomTacticalHint = "hint.tac.spin_revolver"

ATT.Hook_ToggleTactical = function(wep)
    if wep:StillWaiting() then return true end
    wep:ScopeToggle(0)
    wep:PlayAnimation("draw", 1, false, true)
    wep:SetNextPrimaryFire(CurTime() + 0.25)
    return true
end

TacRP.LoadAtt(ATT, "tac_1858_spin")

------------------------------
-- #region optic_m1_scope (M1 Carbine 3.5×24 Scope/3.5x Scope)
------------------------------
ATT = {}
ATT.PrintName = "att.optic_m1_scope.name"
ATT.FullName = "att.optic_m1_scope.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_carbinescope.png", "mips smooth")
ATT.Description = "att.optic_m1_scope.desc"
ATT.Pros = {"att.zoom.3.5"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = "optic_m1"

ATT.SortOrder = 3.5

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3.5

ATT.Add_AimDownSightsTime = 0.04

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "optic_m1_scope")

------------------------------
-- #region optic_delisle_scope (De Lisle 4×24 Scope/4x Scope)
------------------------------
ATT = {}
ATT.PrintName = "att.optic_delisle_scope.name"
ATT.FullName = "att.optic_delisle_scope.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "att.optic_delisle_scope.desc"
ATT.Pros = {"att.zoom.4"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = "optic_delisle"

ATT.SortOrder = 0

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 4

ATT.Add_AimDownSightsTime = 0.04

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "optic_delisle_scope")

------------------------------
-- #region muzz_supp_assassin (Assassin Suppressor/A. Suppressor)
------------------------------
ATT = {}
ATT.PrintName = "att.muzz_supp_assassin.name"
ATT.FullName = "att.muzz_supp_assassin.name.full"
ATT.Icon = Material("entities/tacrp_att_muzz_supp_assassin.png", "mips smooth")
ATT.Description = "att.muzz_supp_assassin.desc"
ATT.Pros = {"stat.vol_shoot", "stat.range", "stat.muzzlevelocity"}
ATT.Cons = {"stat.recoil",  "rating.handling"}

ATT.Model = "models/weapons/tacint_shark/addons/suppressor_assassin.mdl"
ATT.Scale = 1.4

ATT.ModelOffset = Vector(0, 0, 0.05)

ATT.Category = "silencer"

ATT.SortOrder = 7

ATT.Add_Vol_Shoot = -25
ATT.Add_Range_Min = 250
ATT.Mult_Range_Max = 1.5
ATT.Mult_Range_Min = 1.5
ATT.Add_MuzzleVelocity = 2000
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

TacRP.LoadAtt(ATT, "muzz_supp_assassin")

------------------------------
-- #region ammo_gyrojet_ratshot (13mm Ratshot Mini-Rockets)
------------------------------
ATT = {}
ATT.PrintName = "att.ammo_gyrojet_ratshot.name"
ATT.FullName = "att.ammo_gyrojet_ratshot.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "att.ammo_gyrojet_ratshot.desc"
ATT.Pros = {"att.procon.airburst"}
ATT.Cons = {"stat.damage", "stat.muzzlevelocity", "stat.rpm"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 4

ATT.Mult_Damage_Max = 0.55
ATT.Mult_Damage_Min = 0.55

ATT.Mult_ShootEntForce = 0.65

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_ratshot"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_gyrojet_ratshot")

------------------------------
-- #region ammo_gyrojet_pipe (15mm Boosted Pipe Grenades)
------------------------------
ATT = {}
ATT.PrintName = "att.ammo_gyrojet_pipe.name"
ATT.FullName = "att.ammo_gyrojet_pipe.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "att.ammo_gyrojet_pipe.desc"
ATT.Pros = {"att.procon.explosive"}
ATT.Cons = {"stat.muzzlevelocity", "stat.clipsize", "stat.rpm"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 3

ATT.Add_ClipSize = -2

ATT.Mult_ShootEntForce = 0.15

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_pipe"

ATT.Mult_Damage_Max = 0.725
ATT.Mult_Damage_Min = 0.725

ATT.Override_BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
    [HITGROUP_GEAR] = 1
}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_gyrojet_pipe")

------------------------------
-- #region ammo_gyrojet_lv (11mm Low Velocity Mini-Rockets)
------------------------------
ATT = {}
ATT.PrintName = "att.ammo_gyrojet_lv.name"
ATT.FullName = "att.ammo_gyrojet_lv.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "att.ammo_gyrojet_lv.desc"
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

TacRP.LoadAtt(ATT, "ammo_gyrojet_lv")

------------------------------
-- #region ammo_gyrojet_he (13mm High-Explosive Mini-Rockets)
------------------------------
ATT = {}
ATT.PrintName = "att.ammo_gyrojet_he.name"
ATT.FullName = "att.ammo_gyrojet_he.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "att.ammo_gyrojet_he.desc"
ATT.Pros = {"att.procon.explosive"}
ATT.Cons = {"stat.damage", "att.procon.unreliable", "stat.rpm", "stat.muzzlevelocity"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 2

ATT.Mult_ShootEntForce = 0.85

ATT.Mult_Damage_Max = 0.6
ATT.Mult_Damage_Min = 0.6

ATT.Add_JamFactor = 0.5

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_he"

ATT.Override_BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
    [HITGROUP_GEAR] = 1
}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_gyrojet_he")

------------------------------
-- #region ammo_1858_45colt (Remington 1858 .45 Colt Conversion)
------------------------------
ATT = {}
ATT.PrintName = "att.ammo_1858_45colt.name"
ATT.FullName = "att.ammo_1858_45colt.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_1858_45colt.png", "mips smooth")
ATT.Description = "att.ammo_1858_45colt.desc"
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

TacRP.LoadAtt(ATT, "ammo_1858_45colt")

------------------------------
-- #region ammo_1858_36perc (Remington 1858 .36 Caliber Conversion)
------------------------------
ATT = {}
ATT.PrintName = "att.ammo_1858_36perc.name"
ATT.FullName = "att.ammo_1858_36perc.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_1858_36perc.png", "mips smooth")
ATT.Description = "att.ammo_1858_36perc.desc"
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

TacRP.LoadAtt(ATT, "ammo_1858_36perc")