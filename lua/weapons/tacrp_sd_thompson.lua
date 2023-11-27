SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "M1A1 Thompson"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "3Submachine Gun"

SWEP.Description = "WW2-era SMG with impressive close range firepower backed by sturdy wooden furniture."

SWEP.Trivia_Caliber = ".45 ACP"
SWEP.Trivia_Manufacturer = "Auto-Ordnance Company"
SWEP.Trivia_Year = "1942"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Assets: Counter-Strike: Online 2\nAnimations: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_shark/v_thompson.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_thompson.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 27,
        Damage_Min = 7,

        ReloadTimeMult = 1,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 16,
        Damage_Min = 5,
        Range_Min = 200,
        Range_Max = 1500,
        RPM = 650,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.6,
        ReloadSpeedMult = 0.7,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 8,
        Damage_Min = 3,
        RPM = 650,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 10,
        RecoilSpreadPenalty = 0.003
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 20
SWEP.Damage_Min = 6
SWEP.Range_Min = 500 // distance for which to maintain maximum damage
SWEP.Range_Max = 2000 // distance at which we drop to minimum damage
SWEP.Penetration = 4 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.525

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.15,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 12500

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 700

SWEP.Spread = 0.0075

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 7
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 25
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.75
SWEP.RecoilKick = 3
SWEP.RecoilStability = 0.35
SWEP.RecoilAltMultiplier = 150

SWEP.RecoilSpreadPenalty = 0.0017
SWEP.HipFireSpreadPenalty = 0.025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.92
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.39
SWEP.SprintToFireTime = 0.36

SWEP.Sway = 0.9
SWEP.ScopedSway = 0.2
SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -1, -4.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0, 0.55, 0)
SWEP.SightPos = Vector(-4.41, -4.25, -2.33)

SWEP.CorrectivePos = Vector(0.02, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 30
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.15
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/thompson.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.3
SWEP.DropMagazineTime = 0.4

// sounds

local path = "tacint_shark/weapons/thompson/thompson"
local path1 = "tacrp/weapons/k1a/"

SWEP.Sound_Shoot = "^" .. path .. "-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.EjectEffect = 1

// anims

SWEP.AnimationTranslationTable = {
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.4, -0.07),
    vm_ang = Angle(0, 0.25, 0),
    t = 0.12,
    tmax = 0.12,
    bones = {
        {
            bone = "ValveBiped.bolt_cover",
            pos = Vector(0, 0, 3),
            t0 = 0,
            t1 = 0.1,
        },
    },
}

// attachments

SWEP.AttachmentElements = {
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped._ROOT_K1a",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.9,
        WMScale = 0.9,
        Pos_VM = Vector(-3.5, 0.22, 1),
        Pos_WM = Vector(0.1, 0, 0),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped._ROOT_K1a",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.8,
        WMScale = 0.75,
        Pos_VM = Vector(-2.7, 0.25, 22.5),
        Pos_WM = Vector(0, 23, -0.85),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped._ROOT_K1a",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-2.7, 0.8, 2),
        Pos_WM = Vector(0.7, 0, -1),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(-90, -90, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_smg"},
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
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
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

addsound("tacint_thompson.Remove_Clip", path .. "_draw.wav")
addsound("tacint_thompson.Insert_Clip", path .. "_clipin.wav")
addsound("tacint_thompson.bolt_back", path .. "_boltpull.wav")
addsound("tacint_thompson.bolt_forward", path .. "_draw.wav")