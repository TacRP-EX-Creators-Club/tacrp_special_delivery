ATT.PrintName = "Spin"
ATT.FullName = "Revolver Spin"

ATT.Icon = Material("entities/tacrp_sd_1858.png", "mips smooth")
ATT.Description = "wheeeeeeeeeeeee"
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