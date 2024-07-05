SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "De Lisle Carbine"
SWEP.AbbrevName = "De Lisle"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "5Sporter"

SWEP.Description = "Pistol caliber bolt-action carbine with an integrated suppressor. One of the quietest firearms ever made, its subsonic rounds have no tracer but travel slowly."
SWEP.Description_Quote = "Fired into the River Thames, not a soul heard it."

SWEP.Trivia_Caliber = ".45 ACP"
SWEP.Trivia_Manufacturer = "Sterling Armaments"
SWEP.Trivia_Year = "1942"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model: RedRougeXIII \nTexture: Storm (lovingly fixed by Unselles) \nAnimations: Tactical Intervention"


SWEP.ViewModel = "models/weapons/tacint_shark/v_delisle.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_delisle.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 65,
        Damage_Min = 40,

        Range_Min = 200,
        Range_Max = 2000,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 35,
        Damage_Min = 10,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.02,
        RecoilResetTime = 0.4
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

// "ballistics"

SWEP.Damage_Max = 60
SWEP.Damage_Min = 25
SWEP.Range_Min = 200
SWEP.Range_Max = 5000
SWEP.Penetration = 3
SWEP.ArmorPenetration = 0.9
SWEP.ArmorBonus = 3

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 0.85,
    [HITGROUP_RIGHTARM] = 0.85,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.5
}

SWEP.MuzzleVelocity = 15000

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Bolt-Action" // only used externally for firemode name distinction

SWEP.RPM = 60

SWEP.Spread = 0.001

SWEP.HipFireSpreadPenalty = 0.02
SWEP.PeekPenaltyFraction = 0.25

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 1.5

SWEP.RecoilSpreadPenalty = 0 // extra spread per one unit of recoil
SWEP.MidAirSpreadPenalty = 0.02

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.96
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.65

SWEP.AimDownSightsTime = 0.26
SWEP.SprintToFireTime = 0.3

SWEP.Sway = 1
SWEP.ScopedSway = 0.05

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(1.5, -2, -6)

SWEP.BlindFireAng = Angle(0, 15, -45)
SWEP.BlindFirePos = Vector(1, -2, -3)

SWEP.BlindFireLeftAng = Angle(75, 0, 0)
SWEP.BlindFireLeftPos = Vector(8, 10, -6)

SWEP.BlindFireRightAng = Angle(-75, 0, 0)
SWEP.BlindFireRightPos = Vector(-10, 10, -5)

SWEP.BlindFireSuicideAng = Angle(0, 135, 0)
SWEP.BlindFireSuicidePos = Vector(-2, 45, -35)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0, 0.35, 0.25)
SWEP.SightPos = Vector(-2.69, -5, -3.65)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)


// reload

SWEP.ClipSize = 7
SWEP.Ammo = "pistol"
SWEP.Ammo_Expanded = "ti_pistol_heavy"

SWEP.ReloadTimeMult = 0.9
SWEP.ShootTimeMult = 0.7

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/delisle.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 2.1
SWEP.DropMagazineTime = 1.4

// sounds

local path = "TacRP/weapons/spr/"
local path1 = "tacint_shark/weapons/delisle/"

SWEP.Silencer = true
SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = "^" .. path1 .. "delisle_fire.wav"

SWEP.Vol_Shoot = 80
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.EjectEffect = 1
SWEP.EjectDelay = 0.5

SWEP.TracerNum = 0

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = "shoot1",
    ["blind_fire"] = "shoot1"
}

// attachments

SWEP.AttachmentElements = {
    ["scope"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_delisle"},
        WMBone = "Bone02",
        Bone = "SPR_root",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        Pos_VM = Vector(-3.95, 0.1, 9),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(-3, 1.25, -5.6),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        WMBone = "ValveBiped.Bip01_R_Hand",
        Bone = "SPR_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-2.5, -1, 20),
        Pos_WM = Vector(20, 2.3, -4),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol", "acc_sling", "acc_duffle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol_sub"},
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

addsound("tacint_delisle.Clip_Out", path .. "clip_out-1.wav")
addsound("tacint_delisle.Clip_In", path .. "clip_in-1.wav")
addsound("tacint_delisle.Bolt_Back", path .. "bolt_back-1.wav")
addsound("tacint_delisle.bolt_forward", path .. "bolt_forward-1.wav")
addsound("tacint_delisle.safety", path .. "safety-1.wav")

if engine.ActiveGamemode() == "terrortown" then
    SWEP.HolsterVisible = false
    SWEP.AutoSpawnable = false
    SWEP.IsSilent = true
    SWEP.Kind = WEAPON_HEAVY
    SWEP.CanBuy = { ROLE_TRAITOR }
    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "Stealthy bolt action carbine with no tracers.\nUses normal pistol ammo, has low muzzle velocity.\nVictims do not scream when killed.",
    }
end