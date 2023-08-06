ATT.PrintName = "Marksman"
ATT.FullName = "Marksman Trigger"
ATT.Icon = Material("entities/tacrp_att_trigger_semi.png", "mips smooth")
ATT.Description = "Trigger that sacrfices automatic fire for precision."
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