SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "T/C G2 Contender"
SWEP.AbbrevName = "Contender"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Single-shot hunting pistol. Accurate, compact and lethal, so you better make that one round count.\nEquipped with a 6x scope by default."
SWEP.Description_Quote = "\"You know what I hate? Two groups of people...\""

SWEP.ViewModel = "models/weapons/tacint_shark/v_contender.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_contender.mdl"

SWEP.Trivia_Caliber = ".45-70 Govt."
SWEP.Trivia_Manufacturer = "Thompson/Center"
SWEP.Trivia_Year = "1998" // G2 model

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model: kriboez, Doktor haus
Texture: cR45h, syncing, tenoyl, Ultimately
Sound: Doktor haus
Animation: 8Z, speedonerd
]]

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 68,
        Damage_Min = 55,
        Range_Min = 900,
        Range_Max = 3000,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 50,
        Damage_Min = 75,
        Range_Min = 500,
        Range_Max = 1500,

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
    },
    [TacRP.BALANCE_PVE] = {
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 60
SWEP.Damage_Min = 45
SWEP.Range_Min = 600
SWEP.Range_Max = 3000
SWEP.Penetration = 12
SWEP.ArmorPenetration = 0.875

SWEP.MuzzleVelocity = 24000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.5,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 100

SWEP.Spread = 0.001

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.25
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 3
SWEP.RecoilKick = 12
SWEP.RecoilStability = 0.85

SWEP.RecoilSpreadPenalty = 0.01
SWEP.HipFireSpreadPenalty = 0.025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.29
SWEP.SprintToFireTime = 0.29

SWEP.Sway = 1
SWEP.ScopedSway = 0.3

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, 0, 0.5)

SWEP.CustomizePos = Vector(5, 0, -1)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(0, 0, 2)

SWEP.BlindFireLeftAng = Angle(60, 0, 0)
SWEP.BlindFireLeftPos = Vector(14, 10, -10)

SWEP.BlindFireRightAng = Angle(-60, 0, 0)
SWEP.BlindFireRightPos = Vector(-10, 20, -11)

SWEP.BlindFireSuicideAng = Angle(260, 0, 5)
SWEP.BlindFireSuicidePos = Vector(42, 12, -4)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -6)

SWEP.SightAng = Angle(0, 0, 0)
SWEP.SightPos = Vector(-4.02, 0, 2.65)

SWEP.CorrectiveAng = Angle(0, 0, 0)
SWEP.CorrectivePos = Vector(0.025, 0, 0.05)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 6
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 1
SWEP.Ammo = "357"
SWEP.Ammo_Expanded = "ti_rifle"

SWEP.ReloadTimeMult = 1
SWEP.ReloadUpInTime = 1.25

// sounds

local path = "tacint_shark/weapons/contender/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_shotgun"

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
    ["deploy"] = "deploy",
    ["fire_iron"] = "fire",
    ["fire"] = "fire",
    ["blind_idle"] = "blind_idle",
    ["blind_fire"] = "blind_fire",
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "jam",
}

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}


SWEP.DeployTimeMult = 1

SWEP.LastShot = false

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper", "ironsights"},
        Bone = "g2_barrel",
        InstalledElements = {"sights"},

        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1,
        Pos_VM = Vector(0.02, -1.85, 1),
        Pos_WM = Vector(9, 1.3, -5.5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "g2_barrel",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.9,
        WMScale = 0.9,
        Pos_VM = Vector(0, -0.9, 17.75),
        Pos_WM = Vector(27, 1.2, -4.8),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom"},
        Bone = "g2_barrel",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1,
        WMScale = 1.5,
        Pos_VM = Vector(0, -0.55, 11),
        Pos_WM = Vector(12.5, 1, -3),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(0, 0, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },

    [5] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
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

addsound("tacint_contender.open", path .. "open_chamber.wav")
addsound("tacint_contender.close", path .. "close_chamber.wav")
addsound("tacint_contender.magout", path .. "bullet_out.wav")
addsound("tacint_contender.magin", path .. "bullet_in.wav")
addsound("tacint_contender.hammer", path .. "hammer.wav")

addsound("tacint_contender.draw", path .. "draw.wav")
