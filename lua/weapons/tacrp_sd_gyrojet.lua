SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "MBA Gyrojet"
SWEP.Category = "Tactical RP (Special)" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "9Equipment"

SWEP.Description = "Experimental pistol firing self-propelled minirockets that accelerate as they fly. \nThis particular example has been modified to use removable magazines."

SWEP.ViewModel = "models/weapons/tacint_shark/v_gyrojet.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/v_cz52.mdl"

SWEP.NoRanger = true

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 30,
        Damage_Min = 21,
        ArmorPenetration = 0.6,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3.75, // barely enough for hollowpoints to 1tap head
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        MoveSpeedMult = 1,
        ShootingSpeedMult = 1,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 23,
        Damage_Min = 17,
        Range_Min = 750,
        Range_Max = 2500,

        RecoilSpreadPenalty = 0.0025,
        RecoilFirstShotMult = 0.75,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.15 * 1.25,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 1,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.75,
        ReloadSpeedMult = 0.9,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 14,
        Damage_Min = 7,

        HipFireSpreadPenalty = 0.015,

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

        MoveSpeedMult = 1,
        ShootingSpeedMult = 1,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Pistol

// "ballistics"

SWEP.Damage_Max = 33
SWEP.Damage_Min = 18
SWEP.Range_Min = 1200
SWEP.Range_Max = 3000
SWEP.Penetration = 3
SWEP.ArmorPenetration = 0.575

SWEP.MuzzleVelocity = 12000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 75

SWEP.Spread = 0.005

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1.5
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0.3
SWEP.RecoilDissipationRate = 7
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 2

SWEP.RecoilKick = 4

SWEP.RecoilSpreadPenalty = 0.003

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

SWEP.Sway = 1.05
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-135, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 19, -5)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(-0.2, -0.5, 0)
SWEP.SightPos = Vector(-3.37, 1, -4)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)


// reload

SWEP.ClipSize = 6
SWEP.Ammo = "rpg_round"

SWEP.ReloadUpInTime = 1.8

SWEP.ReloadTimeMult = 1.3

// sounds

local path = "tacint_shark/weapons/gyrojet/"
local path1 = "tacrp/weapons/xd45/"

SWEP.Sound_Shoot = "^" .. path .. "deagle-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_suppressed"

// anims

// VM:
// idle
// fire
// fire1, fire2
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
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.LastShot = false

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
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

addsound("tacint_gyrojet.clip_in", path1 .. "clip_in-1.wav")
addsound("tacint_gyrojet.clip_out", path1 .. "clip_out-1.wav")
addsound("tacint_gyrojet.clip_slap", path1 .. "clip_slap-1.wav")
addsound("tacint_gyrojet.slide_back", {
    path1 .. "slide_back-1.wav",
    path1 .. "slide_back-2.wav",
})
addsound("tacint_gyrojet.cock_hammer", path1 .. "cockhammer.wav")
addsound("tacint_gyrojet.safety_switch", path1 .. "safety_switch.wav")
