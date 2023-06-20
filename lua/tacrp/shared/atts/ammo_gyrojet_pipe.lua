ATT.PrintName = "Pipe"
ATT.FullName = "15mm Boosted Pipe Grenades"

ATT.Icon = Material("entities/tacrp_att_ammo_40mm_smoke.png", "mips smooth")
ATT.Description = "Heavy grenades with timed fuse. Direct hits detonate instantly."
ATT.Pros = {"att.procon.explosive"}
ATT.Cons = {"stat.muzzlevelocity", "stat.clipsize", "stat.rpm"}

ATT.Category = "ammo_gyrojet"

ATT.SortOrder = 3

ATT.Add_ClipSize = -2

ATT.Mult_ShootEntForce = 0.75

ATT.Mult_ShootTimeMult = 2.5
ATT.Mult_RPM = 0.5

ATT.ShootEnt = "tacrp_proj_gyrojet_pipe"

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