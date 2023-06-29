ATT.PrintName = "Scope"
ATT.FullName = "De Lisle 4x24 Scope"
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "Optical scope with specialized mount for the De Lisle."
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