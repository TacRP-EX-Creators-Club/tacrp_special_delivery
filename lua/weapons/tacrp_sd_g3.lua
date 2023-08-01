SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "HK G3SG/1"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "6Precision Rifle"

SWEP.Description = "Accurized battle rifle with excellent precision but poor handling.  Capable of automatic fire. \nEquipped with a 6x scope by default."

SWEP.ViewModel = "models/weapons/tacint_shark/v_g3.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_g3.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 30,
        Damage_Min = 48,

        Range_Min = 1500,
        Range_Max = 5000,


        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 14,
        Damage_Min = 9,

        RecoilSpreadPenalty = 0.0015,
        HipFireSpreadPenalty = 0.03,
        RecoilMaximum = 12,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.6,
        ReloadSpeedMult = 0.7,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 24,
        Damage_Min = 36,

        Range_Min = 1400,
        Range_Max = 4000,

        HipFireSpreadPenalty = 0.03,

        RecoilKick = 4,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 36
SWEP.Damage_Min = 30
SWEP.Range_Min = 2500 // distance for which to maintain maximum damage
SWEP.Range_Max = 7000 // distance at which we drop to minimum damage
SWEP.Penetration = 15 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.775
SWEP.ArmorBonus = 2

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 25000

// misc. shooting

SWEP.Firemodes = {
    1,
    2
}

SWEP.RPM = 480

SWEP.Spread = 0.0008

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 8
SWEP.RecoilResetTime = 0.2  // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 12
SWEP.RecoilFirstShotMult = 0.4

SWEP.RecoilVisualKick = 2
SWEP.RecoilKick = 6
SWEP.RecoilStability = 0.7

SWEP.RecoilSpreadPenalty = 0.006
SWEP.HipFireSpreadPenalty = 0.045

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.65
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.45
SWEP.SprintToFireTime = 0.5

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -4, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(8, -1, -2)

SWEP.SightAng = Angle(-0.14, 0.12, 0)
SWEP.SightPos = Vector(-4.6, -7.5, -3.1)

SWEP.CorrectivePos = Vector(0.025, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 6
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.3
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/g3.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.55
SWEP.DropMagazineTime = 1

// sounds

local path = "TacRP/weapons/mp5/mp5_"
local path1 = "tacint_shark/weapons/g3/g3sg1"

SWEP.Sound_Shoot = "^" .. path1 .. "-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2
SWEP.EjectEffect = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"

// anims

// VM:
// idle
// fire
// fire1, fire2...
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "dryfire",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

// attachments

SWEP.AttachmentElements = {
    ["bipod"] = {
        BGs_VM = {
            {1, 1}
        },
    },
    ["irons"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["optic"] = {
        BGs_VM = {
            {2, 2}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["tactical"] = {
        BGs_VM = {
            {3, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights_sniper", "optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped.mp5_rootbone",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        Pos_VM = Vector(-6, -0.3, 4),
        Pos_WM = Vector(6, 1.35, -5.9),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 1, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.mp5_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-4.1, -0.25, 29.75),
        Pos_WM = Vector(32, 1.25, -4.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.mp5_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-4.7, -1.15, 17),
        Pos_WM = Vector(20, 1.9, -4.5),
        Ang_VM = Angle(90, 0, -75),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_bipod", "acc_sling", "acc_duffle", "acc_extmag_rifle2"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
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
        Category = {"trigger_auto"},
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

addsound("tacint_g3.remove_clip", path1 .. "_clipout.wav")
addsound("tacint_g3.insert_clip", path1 .. "_clipin.wav")
addsound("tacint_g3.insert_clip-mid", path1 .. "_clipin.wav")
addsound("tacint_g3.HK_Slap", path1 .. "_boltrelease.wav")
addsound("tacint_g3.bolt_back", path1 .. "_boltpull.wav")
addsound("tacint_g3.fire_select", {
    path .. "fire_select-1.wav",
    path .. "fire_select-2.wav",
    path .. "fire_select-3.wav",
})