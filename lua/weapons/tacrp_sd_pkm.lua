SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "PKM"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "5Machine Gun"

SWEP.Description = "General-purpose machine gun capable of intense suppressive fire. High capacity and damage but is very, very bulky."

SWEP.Trivia_Caliber = "7.62x54mmR"
SWEP.Trivia_Manufacturer = "Degtyaryov Plant"
SWEP.Trivia_Year = "1961"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Assets: Call to Arms
Sounds: NightmareMutant & speedonerd
Animations: Tactical Intervention
]]
SWEP.ViewModel = "models/weapons/tacint_shark/v_pkm.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_pkm.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 35,
        Damage_Min = 24,
        Range_Min = 700,
        Range_Max = 4000,

        ClipSize = 100,
    },
    [TacRP.BALANCE_TTT] = {

        Description = "Machine gun with high damage but very low mobility.",

        Damage_Max = 20,
        Damage_Min = 12,
        Range_Min = 750,
        Range_Max = 3000,
        ClipSize = 80,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 20,
        Damage_Min = 12,

        ClipSize = 100,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        ClipSize = 100,
        Damage_Max = 29,
        RecoilMaximum = 26,
        MoveSpeedMult = 0.7,
        ShootingSpeedMult = 0.4
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// "ballistics"

SWEP.Damage_Max = 38
SWEP.Damage_Min = 28
SWEP.Range_Min = 1600 // distance for which to maintain maximum damage
SWEP.Range_Max = 5000 // distance at which we drop to minimum damage
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.8

SWEP.MuzzleVelocity = 17500

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 650

SWEP.Spread = 0.0065

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 25
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 30
SWEP.RecoilFirstShotMult = 3

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 9
SWEP.RecoilStability = 0.25
SWEP.RecoilAltMultiplier = 300

SWEP.HipFireSpreadPenalty = 0.07
SWEP.RecoilSpreadPenalty = 0.0012
SWEP.PeekPenaltyFraction = 0.15

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.75
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.55

SWEP.ReloadSpeedMult = 0.15
SWEP.ReloadSpeedMultTime = 1

SWEP.AimDownSightsTime = 0.65
SWEP.SprintToFireTime = 0.75

SWEP.Sway = 3.5
SWEP.ScopedSway = 0.75

SWEP.FreeAimMaxAngle = 8

SWEP.Bipod = true
SWEP.BipodRecoil = 0.35
SWEP.BipodKick = 0.25

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -4, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.03, 1, 0)
SWEP.SightPos = Vector(-4.425, -7.5, -4.15)

SWEP.CorrectivePos = Vector(0.025, 0, 0.125)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 125
SWEP.Ammo = "ar2"
SWEP.Ammo_Expanded = "ti_rifle"

SWEP.ReloadTimeMult = 1.25
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/pkm.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 3.5
SWEP.DropMagazineTime = 0.7

SWEP.BulletBodygroups = {
    [1] = {5, 0},
    [2] = {5, 1},
    [3] = {5, 2},
    [4] = {5, 3},
    [5] = {5, 4},
    [6] = {5, 5},
    [7] = {5, 6},
    [8] = {5, 7},
}
SWEP.DefaultBodygroups = "000006"

// sounds

local path = "tacint_shark/weapons/pkm/pkm"

SWEP.Sound_Shoot = "^" .. path .. "-1.wav"
SWEP.Sound_Shoot_Silenced = "^" .. path .. "-1_silenced.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_minimi"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = {"fire4_M", "fire3_M", "fire2_M", "fire1_M"},
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = "melee1"
}

// attachments

SWEP.AttachmentElements = {
    ["bipod"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["extendedbelt"] = {
        BGs_VM = {
            {2, 1}
        },
    },
	["sights"] = {
		BGs_VM = {
            {3, 1}
        },
		BGs_WM = {
			{3, 1}
		},
	}
}

//ValveBiped.MG4_root

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.feed_cover",
        InstalledElements = {"sights"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1.25,
        Pos_VM = Vector(-2, 0, 0),
        Pos_WM = Vector(12, 1.15, -8),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-5.1, 0, 43.5),
        Pos_WM = Vector(43.2, 1.15, -5.3),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-4.6, -1.1, 13),
        Pos_WM = Vector(14, 1.75, -4.5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_bipod", "extendedbelt", "acc_sling", "acc_duffle"},
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
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

addsound("tacint_pkm.Clip_Out", path .. "_boxout.wav")
addsound("tacint_pkm.Clip_In", path .. "_boxin.wav")
addsound("tacint_pkm.bolt_release", path .. "_bolt.wav")
addsound("tacint_pkm.bolt_back", path .. "_bolt.wav")
addsound("tacint_pkm.bolt_forward", path .. "_coversmack.wav")
addsound("tacint_pkm.feedcover_close", path .. "_coverdown.wav")
addsound("tacint_pkm.feedcover_open", path .. "_coverup.wav")
addsound("tacint_pkm.insertbullets", path .. "_chain.wav")
addsound("tacint_pkm.deploy", path .. "_draw.wav")