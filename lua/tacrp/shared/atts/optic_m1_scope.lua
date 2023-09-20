ATT.PrintName = "Carbine Scope"
ATT.FullName = "M1 Carbine 3.5x24 Scope"
ATT.Icon = Material("entities/tacrp_att_optic_carbinescope.png", "mips smooth")
ATT.Description = "Optical scope with specialized mount for the M1 Carbine."
ATT.Pros = {"3.5x Zoom"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = "optic_m1"

ATT.SortOrder = 0

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3.5

ATT.Add_AimDownSightsTime = 0.04

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end