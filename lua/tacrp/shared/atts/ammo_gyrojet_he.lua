ATT.PrintName = "HE"
ATT.FullName = "13mm High Explosive Mini-Rockets"

ATT.Icon = Material("entities/tacrp_att_ammo_gyrojet.png", "mips smooth")
ATT.Description = "Projectile with a small explosive charge instead of a bullet head."
ATT.Pros = {"att.procon.explosive"}
ATT.Cons = {"stat.damage", "att.procon.unreliable", "stat.rpm"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 2

ATT.Mult_Damage_Max = 0.6
ATT.Mult_Damage_Min = 0.6

ATT.Add_JamFactor = 0.5

ATT.Mult_ShootTimeMult = 2
ATT.Mult_RPM = 0.75

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