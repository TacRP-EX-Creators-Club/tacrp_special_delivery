SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "FAMAS F1"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "Burst-fire bullpup used by the French Army. High rate of fire and great accuracy is limited only by its substandard magazine capacity and pretty intense recoil.\nHas a bipod for esoteric French reasons. "

SWEP.Trivia_Caliber = "5.56x45mm"
SWEP.Trivia_Manufacturer = "GIAT Industries" // more like GYATT industries ahahahaha amirite fellow zoomies?
SWEP.Trivia_Year = "1975"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model: SnipaMasta
Texture: SnipaMasta, Fnuxray
Animations: Tactical Intervention, edited by speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_famas.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_famas.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 22,
        Damage_Min = 12,
        PostBurstDelay = 0.22,

        RPM = 900,
        RPMMultBurst = 1000 / 900,

        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.85,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 20,
        Damage_Min = 12,
        Range_Min = 400,
        Range_Max = 2400,
        PostBurstDelay = 0.333,

        RPM = 450,
        RPMMultBurst = 1000 / 450,
        RPMMultSemi = 1,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
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
        Damage_Max = 11,
        Damage_Min = 7,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 18,
        RecoilDissipationRate = 12
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 22
SWEP.Damage_Min = 10
SWEP.Range_Min = 1200
SWEP.Range_Max = 3200
SWEP.Penetration = 7
SWEP.ArmorPenetration = 0.8

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3, // Must land at least 2 shots from a burst to get a headshot kill at full health.
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 24000

// misc. shooting

SWEP.Firemodes = {
    -3,
    1
}

SWEP.RPM = 780 // Slightly lower than actual FAMAS firerate for Balance(TM) reasons
SWEP.RPMMultBurst = 1200 / 780

SWEP.Spread = 0.002

SWEP.PostBurstDelay = 0.25
SWEP.RunawayBurst = true


SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 7
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 24
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 5
SWEP.RecoilStability = 0.4
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.004
SWEP.HipFireSpreadPenalty = 0.035

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.7

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.Sway = 1.15
SWEP.ScopedSway = 0.125

SWEP.FreeAimMaxAngle = 4


SWEP.Bipod = true
SWEP.BipodRecoil = 0.4
SWEP.BipodKick = 0.25


// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0.25, 1.25, -0.4)

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

SWEP.SightAng = Angle(0, 1, 0)
SWEP.SightPos = Vector(-4, -6, 0.4)

SWEP.CorrectivePos = Vector(0, 0, 0.12)
SWEP.CorrectiveAng = Angle(0, 0, -0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 25
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/famas.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.5
SWEP.DropMagazineTime = 0.4

// sounds

local path = "tacint_shark/weapons/famas/"
local path1 = "tacrp/weapons/aug/aug_"

SWEP.Sound_Shoot = "^" .. path .. "famas-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["fire_iron"] = "idle",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire4_M",
    ["melee"] = {"melee1", "melee2"}
}

-- SWEP.ProceduralIronFire = {
    -- vm_pos = Vector(0, -0.2, -0.12),
    -- vm_ang = Angle(0, 0.25, 0),
    -- t = 0.1,
    -- tmax = 0.1,
    -- bones = {
        -- {
            -- bone = "ValveBiped.bolt",
            -- pos = Vector(0, 0, -3),
            -- t0 = 0.01,
            -- t1 = 0.08,
        -- },
    -- },
-- }

SWEP.DeployTimeMult = 1.05

// attachments

SWEP.AttachmentElements = {
    ["bipod"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["rail"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        }
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "famas_root",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        InstalledElements = {"rail"},
        VMScale = 1,
        Pos_VM = Vector(0, -7, 5),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(7.6, 1, -8.3),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "famas_root",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.9,
        WMScale = 0.9,
        Pos_VM = Vector(0, -2.6, 19.75),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(22, 1, -4.4),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "famas_root",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 1,
        Pos_VM = Vector(-0.6, -5.5, 10.5),
        Ang_VM = Angle(90, -1, 0),
        Pos_WM = Vector(14.75, 1.5, -6),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "perk_extendedmag", "acc_bipod"},
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
        Category = {"trigger_burst"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

addsound("tacint_famas.insert_clip", path .. "Clipin.wav")
addsound("tacint_famas.remove_clip", path .. "Clipout.wav")
addsound("tacint_famas.Handle_FoldDown", path .. "handle_folddown.wav")
addsound("tacint_famas.bolt_lockback", path .. "boltpull.wav")
addsound("tacint_famas.bolt_release", path .. "boltforward.wav")