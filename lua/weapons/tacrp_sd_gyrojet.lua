SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "MBA Gyrojet"
SWEP.Category = "Tactical RP (Special)" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "9Equipment"

SWEP.Description = "Experimental pistol firing self-propelled minirockets. Powerful, but prone to jamming. This model was further developed to allow for removable magazines and can accept additional ammo types."

SWEP.ViewModel = "models/weapons/tacint_shark/v_gyrojet.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/v_cz52.mdl"

SWEP.NoRanger = false

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        MoveSpeedMult = 1,
        ShootingSpeedMult = 1,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        ReloadTimeMult = 1 * 1.25,
        MoveSpeedMult = 1,
        ShootingSpeedMult = 1,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.75,
        ReloadSpeedMult = 0.9,
    },
    [TacRP.BALANCE_PVE] = {
        MoveSpeedMult = 1,
        ShootingSpeedMult = 1,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Pistol

// "ballistics"

SWEP.Damage_Max = 75
SWEP.Damage_Min = 75

SWEP.Range_Min = 9000
SWEP.Range_Max = 9000

SWEP.Penetration = 20
SWEP.ArmorPenetration = 1

SWEP.ShootEnt = "tacrp_proj_gyrojet"
SWEP.ShootEntForce = 15000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
    [HITGROUP_GEAR] = 1
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 180

SWEP.Spread = 0.0025

SWEP.ShootTimeMult = 0.5

SWEP.JamFactor = 0.8

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 3
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 4
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 2

SWEP.RecoilKick = 3

SWEP.RecoilSpreadPenalty = 0.01

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

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
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

SWEP.CorrectivePos = Vector(0, 0, 0)
SWEP.CorrectiveAng = Angle(0, 0, 0)

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
        PrintName = "Optic",
        Category = "optic_pistol",
        Bone = "xd45_rig.slide",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(0.04, -0.4, 1.1),
        Ang_VM = Angle(0, -90, 0),
        Pos_WM = Vector(0, -1, -1),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc_extmag_pistol2", "acc", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_gyrojet"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
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
