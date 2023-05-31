SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "FAMAS F1"
SWEP.Category = "Tactical RP - Special Delivery" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "Burst-fire bullpup with a high rate of fire and great accuracy but limited by its small magazine and poor control."

SWEP.ViewModel = "models/weapons/tacint_shark/v_famas.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_aug.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 20,
        Damage_Min = 12,

        MoveSpeedMult = 0.85,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 13,
        Damage_Min = 9,
        Range_Min = 400,
        Range_Max = 1800,
        PostBurstDelay = 0.2,

        RecoilResetTime = 0.2,
        RecoilSpreadPenalty = 0.004,
        RecoilDissipationRate = 18,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.3,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.8,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.65,
        ReloadSpeedMult = 0.65,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 11,
        Damage_Min = 7,

        MoveSpeedMult = 0.85,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 22
SWEP.Damage_Min = 13
SWEP.Range_Min = 1800
SWEP.Range_Max = 4000
SWEP.Penetration = 7
SWEP.ArmorPenetration = 0.8

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 24000

// misc. shooting

SWEP.Firemodes = {
    -3,
    1
}

SWEP.RPM = 1100

SWEP.Spread = 0.0008

SWEP.PostBurstDelay = 0.3

SWEP.RunawayBurst = true

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 15
SWEP.RecoilResetTime = 0.175
SWEP.RecoilDissipationRate = 21
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.75

SWEP.RecoilKick = 3

SWEP.RecoilSpreadPenalty = 0.0015
SWEP.HipFireSpreadPenalty = 0.03

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.95
SWEP.ShootingSpeedMult = 0.7
SWEP.SightedSpeedMult = 0.7

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.25

SWEP.Sway = 1
SWEP.ScopedSway = 0.125

SWEP.FreeAimMaxAngle = 2

// hold types

SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.9, 1.3, 0)
SWEP.SightPos = Vector(-4.2, -6, -4.9)

SWEP.CorrectivePos = Vector(0.06, 0, -0.2)
SWEP.CorrectiveAng = Angle(0, 0, -0.2)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 25
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1.3
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/aug.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.7
SWEP.DropMagazineTime = 0.8

// sounds

local path = "tacint_shark/weapons/famas/"
local path1 = "tacrp/weapons/aug/aug_"

SWEP.Sound_Shoot = "^" .. path .. "famas-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_5"
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
	["deploy"] = "unholster",
    ["fire_iron"] = "idle",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.DeployTimeMult = 2.25

// attachments

SWEP.AttachmentElements = {
    ["bipod"] = {
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
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        Pos_VM = Vector(-7.25, 0, 4),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(4.5, 1, -7),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
		VMScale = 0.9,
        Pos_VM = Vector(-3.25, 0, 20.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(23, 1, -4.5),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
		VMScale = 1.05,
        Pos_VM = Vector(-5, -0.5, 11.5),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(14, 1, -6),
        Ang_WM = Angle(0, 0, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "perk_extendedmag", "acc_bipod"},
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
        Category = {"trigger_burst"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_famas.insert_clip", path .. "Clipin.wav")
addsound("tacint_famas.remove_clip", path .. "Clipout.wav")
addsound("tacint_famas.Handle_FoldDown", path .. "handle_folddown.wav")
addsound("tacint_famas.bolt_lockback", path .. "boltpull.wav")
addsound("tacint_famas.bolt_release", path .. "boltforward.wav")