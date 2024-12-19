SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "OTs-14 \"Groza\""
SWEP.AbbrevName = "Groza-4"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "Integrally-suppressed bullpup made from a reconfigured AK. Weak, but has great handling and stability and has no visible tracers."
SWEP.Description_Quote = "\"Get out of here, stalker.\""

SWEP.Trivia_Caliber = "9x39mm"
SWEP.Trivia_Manufacturer = "TsKIB SOO"
SWEP.Trivia_Year = "1992"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model: Teh Snake, edited by speedonerd \nTexture: Teh Snake \nSound: Teh Snake & speedonerd \nAnimations: Tactical Intervention, edited by speedonerd"

SWEP.ViewModel = "models/weapons/tacint_shark/v_groza.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_groza.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 16,
        Damage_Min = 11,

        Range_Min = 400,
        Range_Max = 2000,

        RPM = 600,

        RecoilSpreadPenalty = 0.0025,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 8,
        Damage_Min = 4,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        HipFireSpreadPenalty = 0.01
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 19
SWEP.Damage_Min = 14
SWEP.Range_Min = 700 // distance for which to maintain maximum damage
SWEP.Range_Max = 1500 // distance at which we drop to minimum damage
SWEP.Penetration = 5 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.8

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 12000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 750

SWEP.Spread = 0.0065

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 7
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 24
SWEP.RecoilFirstShotMult = 1.5

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 2.5
SWEP.RecoilStability = 0.25

SWEP.RecoilSpreadPenalty = 0.0018
SWEP.HipFireSpreadPenalty = 0.025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.32
SWEP.SprintToFireTime = 0.35

SWEP.Sway = 1.4
SWEP.ScopedSway = 0.2

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, 1, 0)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(4.5, -0.4, -0.7)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(-1, 1, 1)

SWEP.BlindFireLeftAng = Angle(90, 0, 0)
SWEP.BlindFireLeftPos = Vector(10, 6, -4)

SWEP.BlindFireRightAng = Angle(-90, 0, 0)
SWEP.BlindFireRightPos = Vector(-4, 20, -4)

SWEP.SprintAng = Angle(30, -15, -5)
SWEP.SprintPos = Vector(2, 0, 1.5)

SWEP.SightAng = Angle(0, 0.1, 0)
SWEP.SightPos = Vector(-4, -7, 0.9)

SWEP.CorrectivePos = Vector(0, 0, 0.12)
SWEP.CorrectiveAng = Angle(0, 0, -0)

--SWEP.CorrectiveBoneAng = Angle(90, 38, 38)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, -2, -6)
SWEP.HolsterAng = Angle(0, 0, 0)


SWEP.ClipSize = 30
SWEP.Ammo = "smg1"
SWEP.Ammo_Expanded = "ti_pdw"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/groza.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.2
SWEP.DropMagazineTime = 0.65

SWEP.FreeAimMaxAngle = 4

// sounds

local path = "tacint_shark/weapons/groza/"
local path1 = "tacrp/weapons/ak47/ak47_"

SWEP.Sound_Shoot = "^" .. path .. "groza_fire-1.wav"
SWEP.Sound_Shoot_Silenced = "^" .. path .. "groza_fire-1.wav"

SWEP.Vol_Shoot = 75
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.EjectEffect = 2
SWEP.Silencer = true

SWEP.TracerNum = 0

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["fire_iron"] = "idle",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "midreload"
}


SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.2, -0.12),
    vm_ang = Angle(0, 0.25, 0),
    t = 0.1,
    tmax = 0.1,
    bones = {
        {
            bone = "ValveBiped.bolt",
            pos = Vector(0, 0, -3),
            t0 = 0.01,
            t1 = 0.08,
        },
    },
}

SWEP.DeployTimeMult = 1.05

// attachments

SWEP.AttachmentElements = {
    ["rail"] = {
        BGs_VM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "famas_root",
        WMBone = "ValveBiped.Bip01_R_Hand",
        InstalledElements = {"rail"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(0, -6.6, 0.5),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(4.5, 1, -7.2),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "famas_root",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-0.55, -3.3, 1),
        Pos_WM = Vector(4, 1.5, -3.75),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "perk_extendedmag"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle_sub"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
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

addsound("tacint_groza.remove_clip", path .. "famas_clipout.wav")
addsound("tacint_groza.insert_clip", path .. "famas_clipin.wav")
addsound("tacint_groza.boltaction", path .. "famas_forearm.wav")
addsound("tacint_groza.Buttstock_Back", path .. "buttstock_back.wav")
addsound("tacint_groza.bolt_lockback", path .. "famas_boltback.wav")
addsound("tacint_groza.bolt_release", path .. "famas_boltforward.wav")