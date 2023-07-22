SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Ruger 10/22"
SWEP.AbbrevName = "10/22"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "5Sporter Carbine"

SWEP.Description = "Ultra-lightweight plinking rifle.  Barely counts as lethal but is incredibly easy to handle and reload."

SWEP.ViewModel = "models/weapons/tacint_shark/v_1022.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_m14.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 30,
        Damage_Min = 50,

        Range_Min = 1200,
        Range_Max = 3000,

        MoveSpeedMult = 0.8,
        ShootingSpeedMult = 1,
        SightedSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {

        Description = "Semi-automatic rifle with excellent accuracy and a lethal headshot at long range.\nEquipped with a 6x scope by default.",

        Damage_Max = 22,
        Damage_Min = 35,
        Range_Min = 1200,
        Range_Max = 3000,
        RPM = 180,

        RecoilResetTime = 0.18,
        RecoilDissipationRate = 3,
        RecoilMaximum = 3,
        RecoilSpreadPenalty = 0.01,
        RecoilFirstShotMult = 0.5,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3.5,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.85,
        ShootingSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.5,
        ReloadSpeedMult = 0.5,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 15,
        Damage_Min = 34,
        Range_Min = 1200,
        Range_Max = 3000,
        RPM = 200,

        MoveSpeedMult = 0.8,
        ShootingSpeedMult = 0.6,
        SightedSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

// "ballistics"

SWEP.Damage_Max = 40 // damage at minimum range
SWEP.Damage_Min = 32 // damage at maximum range
SWEP.Range_Min = 2000 // distance for which to maintain maximum damage
SWEP.Range_Max = 6000 // distance at which we drop to minimum damage
SWEP.Penetration = 15 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.85

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
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

SWEP.Spread = 0.0002

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.25 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 6
SWEP.RecoilFirstShotMult = 0.5

SWEP.RecoilVisualKick = 0.5
SWEP.RecoilKick = 0.75
SWEP.RecoilStability = 0.75

SWEP.RecoilSpreadPenalty = 0.005
SWEP.HipFireSpreadPenalty = 0.005
SWEP.PeekPenaltyFraction = 0.1

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.95
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.7

SWEP.AimDownSightsTime = 0.2
SWEP.SprintToFireTime = 0.3

SWEP.Sway = 0.75
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 3.5

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

SWEP.SightAng = Angle(0, -0.2, 0)
SWEP.SightPos = Vector(-3.81, -7.5, -2.7)

SWEP.CorrectivePos = Vector(0.025, -1.5, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 25
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 0.8
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/m14.mdl"
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
    ["fire_iron"] = "shoot1",
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "blind_shoot1"
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
        Category = {"ironsights_sniper", "optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped.m14_rootbone",
        InstalledElements = {"tacrail"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.85,
        Pos_VM = Vector(-3.65, 0.15, 5),
        Pos_WM = Vector(14.5, 0.6, -9.1),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 5, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-2.65, 0.18, 31.75),
        Pos_WM = Vector(30, 0, -14.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 5, 180),
        VMScale = 0.75
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3, -0.35, 20),
        Pos_WM = Vector(23, 0, -11),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(-22.5, 5, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_rifle2", "acc_sling", "acc_duffle", "acc_bipod"},
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
        Category = {"ammo_sniper"},
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
