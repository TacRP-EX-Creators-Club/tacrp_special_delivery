SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Stoeger Double Defense"
SWEP.AbbrevName = "Double Defense"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Modern-production short double-barrel shotgun.  Easy to handle, reliable and deadly in close quarters."
SWEP.Description_Quote = "\"The only thing they fear...is you.\""

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Stoeger"
SWEP.Trivia_Year = "Unknown"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Model: Counter-Strike: Online 2 \nSound: Navaro & Vunsunta \nAnimations: speedonerd & 8Z"

SWEP.ViewModel = "models/weapons/tacint_shark/v_dbshotgun.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_dbshotgun.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 10,
        Damage_Min = 4,
    },
    [TacRP.BALANCE_TTT] = {

        Damage_Max = 8,
        Damage_Min = 4,

        Range_Min = 150,
        Range_Max = 1500,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {

        Damage_Max = 10,
        Damage_Min = 5,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 1.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.9
        },
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Pistol

// "ballistics"

SWEP.Damage_Max = 8
SWEP.Damage_Min = 4
SWEP.Range_Min = 250
SWEP.Range_Max = 2500
SWEP.Penetration = 1
SWEP.ArmorPenetration = 0.45

SWEP.Num = 9

SWEP.MuzzleVelocity = 8000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.2,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}


// misc. shooting

SWEP.Firemodes = {
    -2,
    1
}

SWEP.RPM = 250
SWEP.RPMMultBurst = 8
SWEP.RunawayBurst = true

SWEP.Spread = 0.03
SWEP.ShotgunPelletSpread = 0.015

SWEP.HipFireSpreadPenalty = 0.01
SWEP.MidAirSpreadPenalty = 0

SWEP.ShootTimeMult = 0.75

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.3
SWEP.RecoilDissipationRate = 5
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 3
SWEP.RecoilKick = 15
SWEP.RecoilAltMultiplier = 200

SWEP.RecoilSpreadPenalty = 0.02

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
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(1, 0, 0)
SWEP.PassivePos = Vector(0.25, 1, 0.2)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(2, 2, -1)

SWEP.BlindFireSuicideAng = Angle(0, 120, 20)
SWEP.BlindFireSuicidePos = Vector(-7, 30, -25)

SWEP.SprintAng = Angle(45, -10, 0)
SWEP.SprintPos = Vector(6, 0, 0)

SWEP.SightAng = Angle(-0.13, 1.35, -0.1)
SWEP.SightPos = Vector(-3.36, 0, 1.6)

SWEP.CorrectiveAng = Angle(-0.2, 0, 0.5)
SWEP.CorrectivePos = Vector(-0.025, 0, 0.15)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(5, 0, -2)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)


// reload

SWEP.ClipSize = 2
SWEP.Ammo = "buckshot"

SWEP.ReloadUpInTime = 1.65

SWEP.ReloadTimeMult = 1.2

// sounds

local path = "tacint_shark/weapons/db/"

SWEP.Sound_Shoot = "^" .. path .. "deagle-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 0

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
    ["fire_iron"] = "fire1",
    ["fire1"] = "fire1",
    ["fire2"] = "fire1",
    ["blind_fire"] = {"blind_fire1", "blind_fire2"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = {"dryfire"}
}

SWEP.DeployTimeMult = 2.25

SWEP.LastShot = false

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "db_barrels",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.8,
        WMScale = 0.8,
        Pos_VM = Vector(-0.14, -1.75, -3.5),
        Pos_WM = Vector(8, 1, -5.5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(-20, 3.5, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical"},
        Bone = "db_barrels",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.25,
        Pos_VM = Vector(-0.2, 0, 8.75),
        Pos_WM = Vector(18, 0.5, -8),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(-25, 3.5, 0),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
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

local function addshellsound(name, spath)
    sound.Add({
        name = name,
        channel = 15,
        volume = 0.9,
        sound = spath
    })
end

addsound("tacint_db.magrelease", path .. "magrelease.wav")
addsound("tacint_db.open", path .. "openeject.wav")
addsound("tacint_db.close", path .. "close.wav")
addsound("tacint_db.magout", path .. "insert1.wav")
addsound("tacint_db.magin", path .. "insert2.wav")
addsound("tacint_db.unholster", path .. "cloth.wav")
addshellsound("tacint_db.shells", path .. "shells.wav")
