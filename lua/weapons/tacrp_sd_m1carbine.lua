SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "M1 Carbine"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "6Precision Rifle"

SWEP.Description = "WW2-era semi-auto carbine. Intended as a defensive weapon for support troops, it is accurate and lightweight but has mediocre power."

SWEP.Trivia_Caliber = ".30 Carbine"
SWEP.Trivia_Manufacturer = "General Motors" // Yes, really.
SWEP.Trivia_Year = "1942"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model & Texture: KnechtRuprecht \nSound: NightmareMutant \nAnimations: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_shark/v_m1carbine.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_m1carbine.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 25,
        Damage_Min = 20,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 20,
        Damage_Min = 16,
        Range_Min = 1200,
        Range_Max = 3200,
        RPM = 300,

        RecoilKick = 1.5,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 10,
        Damage_Min = 8,
        RPM = 600,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 10,
        RecoilSpreadPenalty = 0.007
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

// "ballistics"

SWEP.Damage_Max = 20
SWEP.Damage_Min = 12
SWEP.Range_Min = 900
SWEP.Range_Max = 3000
SWEP.Penetration = 9
SWEP.ArmorPenetration = 0.725

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

SWEP.MuzzleVelocity = 29000

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 550
SWEP.RPMMultSemi = 0.6

SWEP.Spread = 0.003

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 15
SWEP.RecoilFirstShotMult = 1.25

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 2.5
SWEP.RecoilStability = 0.75
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.0017
SWEP.HipFireSpreadPenalty = 0.02
SWEP.PeekPenaltyFraction = 0.25

SWEP.CanBlindFire = true

// handling
SWEP.MoveSpeedMult = 0.94
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.75

SWEP.ReloadSpeedMult = 0.55

SWEP.AimDownSightsTime = 0.26
SWEP.SprintToFireTime = 0.32

SWEP.Sway = 0.8
SWEP.ScopedSway = 0.15

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(7, -3, -2)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 5, 2),
    Ang = Angle(0, -2, -45)
}

SWEP.SightAng = Angle(0, 1.1, 0)
SWEP.SightPos = Vector(-3.75, -7.25, -2.4)

SWEP.CorrectivePos = Vector(0.025, -7.5, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 15
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 0.85
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/m1carbine.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.85
SWEP.DropMagazineTime = 0.5

// sounds

local path = "Tacint_shark/weapons/m1carbine/"

SWEP.Sound_Shoot = "^" .. path .. "fire.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
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
    ["fire_iron"] = "shoot2",
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "blind_shoot1"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.25, -0.1),
    vm_ang = Angle(0, 0.4, 0),
    t = 0.08,
    tmax = 0.1,
    bones = {
        {
            bone = "ValveBiped.bolt_handle",
            pos = Vector(0, 0, -3),
            t0 = 0.01,
            t1 = 0.1,
        },
    },
}

// attachments

SWEP.AttachmentElements = {
    ["scope"] = {
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
        Category = "optic_m1",
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        Pos_VM = Vector(-4.6, 0.2, 15),
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
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-2.7, 0.2, 31),
        Pos_WM = Vector(30, -0.55, -14),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 5, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-2.3, -0.5, 17),
        Pos_WM = Vector(18, 1.25, -9),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(-22.5, 5, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_smg", "acc_sling", "acc_duffle"},
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

addsound("tacint_m1carbine.remove_clip", path .. "clipout.wav")
addsound("tacint_m1carbine.insert_clip", path .. "clipin2.wav")
addsound("tacint_m1carbine.insert_clip-mid", path .. "clipout.wav")
addsound("tacint_m1carbine.bolt_back", path .. "boltback.wav")
addsound("tacint_m1carbine.bolt_release", path .. "boltforward.wav")
addsound("tacint_m1carbine.safety", path .. "safety.wav")
