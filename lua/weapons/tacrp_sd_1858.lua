SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Remington M1858"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "1Sidearm"

SWEP.Description = "Antique cowboy revolver packing a serious punch, but lacking in accuracy and range.\nCompletely impractical by modern standards, but undeniably cool."

SWEP.ViewModel = "models/weapons/tacint_shark/v_1858.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_mr96.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 65,
        Damage_Min = 32,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 58,
        Damage_Min = 15,
        Range_Min = 250,
        Range_Max = 2500,

        RPM = 60,
        ShootTimeMult = 1,
        Spread = 0.006,
        HipFireSpreadPenalty = 0.01,

        RecoilResetTime = 0.75,
        RecoilDissipationRate = 2,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        ReloadTimeMult = 1.1,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.75,
        ReloadSpeedMult = 0.8,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 30,
        Damage_Min = 10,
        Range_Min = 900,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 60
SWEP.Damage_Min = 17
SWEP.Range_Min = 600 // distance for which to maintain maximum damage
SWEP.Range_Max = 2500 // distance at which we drop to minimum damage
SWEP.Penetration = 4 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.5
SWEP.ArmorBonus = 2

SWEP.MuzzleVelocity = 12500

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.15,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Single-Action" // only used externally for firemode name distinction

SWEP.RPM = 65

SWEP.Spread = 0.008

SWEP.ShootTimeMult = 0.8

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.35
SWEP.RecoilDissipationRate = 2
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 5
SWEP.RecoilKick = 11
SWEP.RecoilStability = 0.75

SWEP.RecoilSpreadPenalty = 0.015
SWEP.HipFireSpreadPenalty = 0.015
SWEP.MidAirSpreadPenalty = 0.02

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.17

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(-1, 3, -0.5)

SWEP.BlindFireAng = Angle(-5, 0, -5)
SWEP.BlindFirePos = Vector(0, 5, 0)

SWEP.BlindFireSuicideAng = Angle(-125, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 12, -6)

SWEP.SprintAng = Angle(0, 35, 0)
SWEP.SprintPos = Vector(2, 2, -10)

SWEP.SightAng = Angle(-0.1, 0.5, 3.5)
SWEP.SightPos = Vector(-4.23, 2, 1.3)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(3.5, 0, -1)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1
SWEP.ScopedSway = 0.5

// reload

SWEP.ClipSize = 6
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 0.8
SWEP.ReloadUpInTime = 2

SWEP.JamSkipFix = true

// sounds

local path = "Tacint_shark/weapons/1858/"

SWEP.Sound_Shoot = "^" .. path .. "nma_fire.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 0
SWEP.EjectEffect = 0

SWEP.MuzzleEffect = "muzzleflash_1"

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
    ["unholster"] = "draw_stock",
    ["dryfire"] = "fire_stock",
    ["fire"] = "fire",
    ["fire_iron"] = "fire",
    ["blind_fire"] = "blind_fire",
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "draw"
}

// attachments

SWEP.Attachments = {
    --[1] = {
        --PrintName = "Optic",
        --Category = {"optic_cqb", "optic_medium"},
        --Bone = "ValveBiped.mr96_rootbone",
        --WMBone = "Box01",
        --AttachSound = "TacRP/weapons/optic_on.wav",
        --DetachSound = "TacRP/weapons/optic_off.wav",
        --VMScale = 1,
        --WMScale = 1,
        --Pos_VM = Vector(-3.9, -0.125, 6.5),
        --Ang_VM = Angle(90, 0, 0),
        --Pos_WM = Vector(0, 1.5, -0.8),
        --Ang_WM = Angle(0, -90, 0),
    --},
    --[2] = {
        --PrintName = "Tactical",
        --Category = "tactical",
        --Bone = "ValveBiped.mr96_rootbone",
        --WMBone = "Box01",
        --AttachSound = "TacRP/weapons/flashlight_on.wav",
        --DetachSound = "TacRP/weapons/flashlight_off.wav",
        --VMScale = 1,
        --WMScale = 1,
        --Pos_VM = Vector(-2.25, -0.125, 9),
      --  Ang_VM = Angle(90, 0, 180),
    --    Pos_WM = Vector(0, 8, -2.25),
  --      Ang_WM = Angle(0, -90, 180),
--    },
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace"},
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
        Category = {"trigger_revolver"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol", "ammo_roulette"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

local function addsound(name, spath, volume)
    sound.Add({
        name = name,
        channel = 16,
        volume = volume or 1.0,
        sound = spath
    })
end

addsound("tacint_1858.lever_down", path .. "army_lever1.wav")
addsound("tacint_1858.pin_out", path .. "army_extract.wav")
addsound("tacint_1858.cylinder_out", path .. "army_cylinder_out.wav")
addsound("tacint_1858.cylinder_in", path .. "army_insert.wav")
addsound("tacint_1858.pin_in", path .. "army_lever1.wav")
addsound("tacint_1858.lever_up", path .. "twirl2.wav", 0.5)
addsound("tacint_1858.hammer", path .. "hammer.mp3")
addsound("tacint_1858.Deploy", path .. "twirl1.wav", 0.5)