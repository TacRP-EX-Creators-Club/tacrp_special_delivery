SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Dual Micros"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "1Sidearm"

SWEP.Description = "Pair of full-auto Micro Uzis, completely sacrificing anything in the way of accuracy or control for an insane effective rate of fire. \nNow *this* is gangster."

SWEP.ViewModel = "models/weapons/tacint_shark/v_dual_uzi.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_dualies.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 25,
        Damage_Min = 18,
        ArmorPenetration = 0.6,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3.75,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        Spread = 0.0125,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 18,
        Damage_Min = 11,
        Range_Min = 750,
        Range_Max = 2500,

        Spread = 0.015,

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

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.9,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.75,
        ReloadSpeedMult = 0.9,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 9,
        Damage_Min = 4,

        Spread = 0.01,
        RecoilKick = 3,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = {["weapon_zm_pistol"] = 0.5, ["weapon_ttt_glock"] = 0.5}

// "ballistics"

SWEP.Damage_Max = 22
SWEP.Damage_Min = 12
SWEP.Range_Min = 1000 // distance for which to maintain maximum damage
SWEP.Range_Max = 3000 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.6

SWEP.MuzzleVelocity = 9500

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = {
	2,
	1
}

SWEP.RPM = 2000

SWEP.Spread = 0.015

SWEP.MoveSpreadPenalty = 0
SWEP.MidAirSpreadPenalty = 0.075
SWEP.HipFireSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 15
SWEP.RecoilResetTime = 0.125
SWEP.RecoilDissipationRate = 18
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 5

SWEP.RecoilSpreadPenalty = 0.00175

SWEP.Sway = 0.5

SWEP.CanBlindFire = false
SWEP.CanSuicide = true

SWEP.ShootTimeMult = 0.6

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 1

SWEP.ReloadSpeedMult = 0.6

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

// hold types

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeSuicide = "duel"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_DUEL

SWEP.PassiveAng = Angle(5, 0, -2)
SWEP.PassivePos = Vector(3, 0, -6)

SWEP.CustomizeAng = Angle(0, 35, 0)
SWEP.CustomizePos = Vector(1, 0, -12)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(0, 0, 0)

SWEP.BlindFireSuicideAng = Angle(0, 130, 0)
SWEP.BlindFireSuicidePos = Vector(1, 22, -15)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(1, 0, -12)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(60, 5, 0)

// reload

SWEP.ClipSize = 40
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.1

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/dualies.mdl"
SWEP.DropMagazineImpact = "pistol"
SWEP.DropMagazineAmount = 2

SWEP.ReloadUpInTime = 2.8
SWEP.DropMagazineTime = 0.25

// sounds

local path = "tacint_shark/weapons/microuzi/"
local path1 = "tacrp/weapons/mtx/"

SWEP.Sound_Shoot = "^" .. path .. "single.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

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
    ["deploy"] = "draw",
    ["blind_idle"] = "idle",
    ["blind_fire"] = "idle",
    ["melee"] = {"melee1", "melee2"},
    ["shoot_left"] = {"shoot_left-1", "shoot_left-2"},
    ["shoot_right"] = {"shoot_right-1", "shoot_right-2"}
}

SWEP.LastShot = true
SWEP.Akimbo = true

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Accessory",
        Category = {"acc_dual", "acc_extmag_dual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Trigger",
        Category = {"trigger_akimbo"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

SWEP.AttachmentCapacity = 30 // amount of "Capacity" this gun can accept

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_dualuzi.clip_in_left", path .. "magin.wav")
addsound("tacint_dualuzi.clip_in_right", path .. "magin.wav")
addsound("tacint_dualuzi.clip_out", path .. "magout.wav")
addsound("tacint_dualuzi.slide_back", path .. "boltpull.wav")

SWEP.Scope = false

SWEP.FreeAim = false