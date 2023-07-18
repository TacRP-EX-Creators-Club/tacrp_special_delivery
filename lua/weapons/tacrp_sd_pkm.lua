SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "PKM"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "4Machine Gun"

SWEP.Description = "General-purpose machine gun, made for intense suppressive fire and deadly stopping power.  Can effectively hold down sightlines and choke points but has terrible mobility and handling."

SWEP.ViewModel = "models/weapons/tacint_shark/v_pkm.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_mg4.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 28,
        Damage_Min = 22,

        ClipSize = 100,

        MoveSpeedMult = 0.75,
        ShootingSpeedMult = 0.65,
        SightedSpeedMult = 0.65,
		ReloadTimeMult = 1.15,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 0.9,
    },
    [TacRP.BALANCE_TTT] = {

        Description = "Machine gun with high damage but very low mobility.",

        Damage_Max = 20,
        Damage_Min = 12,
        Range_Min = 750,
        Range_Max = 3000,
        ClipSize = 80,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.2,

        MoveSpeedMult = 0.85,
        ShootingSpeedMult = 0.4,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.5,
        ReloadSpeedMult = 0.4,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 19,
        Damage_Min = 14,

        ClipSize = 100,

        MoveSpeedMult = 0.75,
        ShootingSpeedMult = 0.5,
        SightedSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// "ballistics"

SWEP.Damage_Max = 28
SWEP.Damage_Min = 22
SWEP.Range_Min = 1500 // distance for which to maintain maximum damage
SWEP.Range_Max = 3600 // distance at which we drop to minimum damage
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.8

SWEP.MuzzleVelocity = 17500

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 650

SWEP.Spread = 0.008

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 15
SWEP.RecoilResetTime = 0.3
SWEP.RecoilDissipationRate = 25
SWEP.RecoilFirstShotMult = 2 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 5

SWEP.HipFireSpreadPenalty = 0.045
SWEP.RecoilSpreadPenalty = 0.001

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.75
SWEP.ShootingSpeedMult = 0.55
SWEP.SightedSpeedMult = 0.55

SWEP.ReloadSpeedMult = 0.15
SWEP.ReloadSpeedMultTime = 1

SWEP.AimDownSightsTime = 0.65
SWEP.SprintToFireTime = 0.75

SWEP.Sway = 3.5
SWEP.ScopedSway = 0.75

SWEP.FreeAimMaxAngle = 8

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
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.02, 0.1, 0)
SWEP.SightPos = Vector(-4.48, -7.5, -3.9)

SWEP.CorrectivePos = Vector(0.025, 0, 0.125)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 125
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.25
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/mg4.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 3.5
SWEP.DropMagazineTime = 0.7

SWEP.BulletBodygroups = {
    [1] = {5, 0},
    [2] = {5, 1},
    [3] = {5, 2},
    [4] = {5, 3},
    [5] = {5, 4},
    [6] = {5, 5},
    [7] = {5, 6},
}
SWEP.DefaultBodygroups = "000006"

// sounds

local path = "tacint_shark/weapons/pkm/pkm"
local path1 = "TacRP/weapons/mg4/"

SWEP.Sound_Shoot = "^" .. path .. "-1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_minimi"
SWEP.EjectEffect = 2

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
    ["fire_iron"] = {"fire4_M", "fire3_M", "fire2_M", "fire1_M"},
    ["fire1"] = "fire1_L",
    ["fire2"] = "fire2_L",
    ["fire3"] = "fire3_L",
    ["fire4"] = "fire4_L",
    ["fire5"] = "fire5_L",
    ["melee"] = {"melee1", "melee2"}
}

// attachments

SWEP.AttachmentElements = {
    ["bipod"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["extendedbelt"] = {
        BGs_VM = {
            {2, 1}
        },
    }
}

//ValveBiped.MG4_root

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.feed_cover",
        InstalledElements = {"sights"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1.1,
        Pos_VM = Vector(-1.5, 0, 0),
        Pos_WM = Vector(8, 1.15, -7),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-5.2, 0, 43),
        Pos_WM = Vector(33, 1.15, -5.75),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-5.25, -0.65, 21),
        Pos_WM = Vector(21.5, 2, -5.25),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_duffle", "acc_bipod", "acc_sling"},
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
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

addsound("tacint_pkm.Clip_Out", path .. "_boxout.wav")
addsound("tacint_pkm.Clip_In", path .. "_boxin.wav")
addsound("tacint_pkm.bolt_release", path .. "_bolt.wav")
addsound("tacint_pkm.bolt_back", path .. "_bolt.wav")
addsound("tacint_pkm.bolt_forward", path .. "_coversmack.wav")
addsound("tacint_pkm.feedcover_close", path .. "_coverdown.wav")
addsound("tacint_pkm.feedcover_open", path .. "_coverup.wav")
addsound("tacint_pkm.insertbullets", path .. "_chain.wav")
addsound("tacint_pkm.deploy", path .. "_draw.wav")