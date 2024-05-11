SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Ruger 10/22"
SWEP.AbbrevName = "10/22"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "5Carbine"

SWEP.Description = "Ultra-lightweight plinking rifle. Highly accurate and easy to handle, but is barely lethal unless scoring a headshot."

SWEP.Trivia_Caliber = ".22 LR"
SWEP.Trivia_Manufacturer = "Sturm, Ruger & Co."
SWEP.Trivia_Year = "1964"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Assets: No More Room in Hell\nAnimations: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_shark/v_1022.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_1022.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 14,
        Damage_Min = 11,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 7.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.9,
            [HITGROUP_RIGHTLEG] = 0.9,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 12,
        Damage_Min = 10,
        Range_Min = 1200,
        Range_Max = 6000,
        RPM = 420,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.9,
            [HITGROUP_RIGHTLEG] = 0.9,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 15,
        Damage_Min = 34,
        Range_Min = 1200,
        Range_Max = 3000,
        RPM = 200,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.005,
        RecoilDissipationRate = 8
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

// "ballistics"

SWEP.Damage_Max = 12
SWEP.Damage_Min = 8
SWEP.Range_Min = 800
SWEP.Range_Max = 4000
SWEP.Penetration = 5
SWEP.ArmorPenetration = 0.85
SWEP.ArmorBonus = 0.25

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1.5,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

SWEP.MuzzleVelocity = 32000

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 450
SWEP.RPMMultSemi = 0.75

SWEP.Spread = 0.0005

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.1 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 10
SWEP.RecoilFirstShotMult = 0.5

SWEP.RecoilVisualKick = 0.1
SWEP.RecoilKick = 0.1
SWEP.RecoilStability = 0.85

SWEP.RecoilSpreadPenalty = 0.0015
SWEP.HipFireSpreadPenalty = 0.01
SWEP.PeekPenaltyFraction = 0.5

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.98
SWEP.ShootingSpeedMult = 0.95
SWEP.SightedSpeedMult = 0.85

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.2
SWEP.SprintToFireTime = 0.34

SWEP.Sway = 0.75
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(7, -3, -2)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 5, 2),
    Ang = Angle(0, -2, -45)
}

SWEP.SightAng = Angle(0, 0.35, 0)
SWEP.SightPos = Vector(-3.775, -7.5, -1.9)

SWEP.CorrectivePos = Vector(0.025, -1.5, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 25
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 0.9
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/1022.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.85
SWEP.DropMagazineTime = 0.5

// sounds

local path = "tacint_shark/weapons/1022/ruger_"

SWEP.Sound_Shoot = "^" .. path .. "fire_01.wav"
SWEP.Sound_Shoot_Silenced = "^" .. path .. "fire_supp.wav"

SWEP.Vol_Shoot = 100
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.EjectEffect = 1

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "shoot1",
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "blind_shoot1"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.2, -0.1),
    vm_ang = Angle(0, 0.3, 0),
    t = 0.12,
    tmax = 0.15,
    bones = {
        {
            bone = "ValveBiped.bolt_handle",
            pos = Vector(0, 0, -3),
            t0 = 0.05,
            t1 = 0.12,
        },
    },
}

// attachments

SWEP.AttachmentElements = {
    ["tacrail"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped.m14_rootbone",
        InstalledElements = {"tacrail"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.85,
        Pos_VM = Vector(-3.65, 0.15, 5),
        Pos_WM = Vector(8, 1.1, -5.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 4, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        WMScale = 0.85,
        Pos_VM = Vector(-2.65, 0.18, 31.75),
        Pos_WM = Vector(32, -0.6, -14.75),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 4, 180),
        VMScale = 0.75
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-2.25, -0.2, 16),
        Pos_WM = Vector(18, 0.8, -8.5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(-22.5, 5, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_smg", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_1022.remove_clip", path .. "clipout.wav")
addsound("tacint_1022.insert_clip", path .. "clipin.wav")
addsound("tacint_1022.insert_clip-mid", path .. "clipin.wav")
addsound("tacint_1022.bolt_back", path .. "slidelock.wav")
addsound("tacint_1022.bolt_release", path .. "slideforward.wav")
addsound("tacint_1022.safety", path .. "slideback.wav")
