SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Dual Eagles"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Pair of gaudy gold-coated Desert Eagles, as if one wasn't enough. \nTwice the insane firepower, twice the insane recoil."

SWEP.Trivia_Caliber = ".50 AE"
SWEP.Trivia_Manufacturer = "Magnum Research"
SWEP.Trivia_Year = "1995" // Mark XIX model

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: Hav0c & Stoke 
Texture: The_Tub & Stoke 
Sound: Vunsunta
Animations: Tactical Intervention]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_dual_eagles.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_dual_eagles.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 75,
        Damage_Min = 40,

        Spread = 0.03,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3.75,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 45,
        Damage_Min = 20,
        Range_Min = 100,
        Range_Max = 1500,
        RPM = 240,

        Spread = 0.03,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
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
        Damage_Max = 65,
        Damage_Min = 30,

        Spread = 0.015,
        RecoilKick = 8,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilKick = 10,
        Spread = 0.015
    }
}

SWEP.TTTReplace = {["weapon_zm_pistol"] = 0.5, ["weapon_ttt_glock"] = 0.5}

// "ballistics"

SWEP.Damage_Max = 80
SWEP.Damage_Min = 50
SWEP.Range_Min = 150
SWEP.Range_Max = 1500
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.85
SWEP.ArmorBonus = 5

SWEP.MuzzleVelocity = 10000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = {1, 2}
SWEP.Firemode = false

SWEP.RPM = 240
SWEP.RPMMultBurst = 1.1
SWEP.RPMMultSemi = 1.1

SWEP.Spread = 0.025

SWEP.MoveSpreadPenalty = 0
SWEP.MidAirSpreadPenalty = 0.075
SWEP.HipFireSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0.175
SWEP.RecoilDissipationRate = 12
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 2
SWEP.RecoilKick = 15
SWEP.RecoilStability = 0.1

SWEP.RecoilSpreadPenalty = 0.004

SWEP.Sway = 0.5

SWEP.CanBlindFire = false
SWEP.CanSuicide = true

SWEP.ShootTimeMult = 0.6

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 1

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.3

// hold types

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeSuicide = "duel"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_DUEL

SWEP.PassiveAng = Angle(5, 0, -2)
SWEP.PassivePos = Vector(3, 0, -6)

SWEP.CustomizeAng = Angle(0, 35, 0)
SWEP.CustomizePos = Vector(1, 0, -12)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(0, 0, 0)

SWEP.BlindFireSuicideAng = Angle(0, 130, 0)
SWEP.BlindFireSuicidePos = Vector(1, 22, -15)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(1, 0, -12)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(60, 5, 0)

// reload

SWEP.ClipSize = 14
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 1

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/dual_deagles.mdl"
SWEP.DropMagazineImpact = "pistol"
SWEP.DropMagazineAmount = 2

SWEP.ReloadUpInTime = 2.8
SWEP.DropMagazineTime = 0.25

// sounds

local path = "tacint_shark/weapons/dualeagles/"
local path1 = "tacrp/weapons/mtx/"

SWEP.Sound_Shoot = "^" .. path .. "elite-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.WM_QCA_MuzzleL = 1
SWEP.WM_QCA_MuzzleR = 2
SWEP.WM_QCA_EjectL = 3
SWEP.WM_QCA_EjectR = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["blind_idle"] = "idle",
    ["blind_fire"] = "idle",
    ["melee"] = {"melee1", "melee2"},
    ["shoot_left"] = {"shoot_left-1", "shoot_left-2"},
    ["shoot_right"] = {"shoot_right-1", "shoot_right-2"}
}

SWEP.LastShot = true
SWEP.Akimbo = true
SWEP.EffectsAlternate = true

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.mtx_root2",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 0.9,
        WMScale = 1,
        Pos_VM = Vector(-2.25, -0.2, 7),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(-0.1, 9, -1.5),
        Ang_WM = Angle(0, -90, 180),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc_dual", "acc_extmag_dual2"},
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
        Category = {"trigger_akimbo"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

SWEP.AttachmentCapacity = 30 // amount of "Capacity" this gun can accept

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_dualeagles.clip_in_left", path .. "elite_leftclipin.wav")
addsound("tacint_dualeagles.clip_in_right", path .. "elite_rightclipin.wav")
addsound("tacint_dualeagles.clip_out", path .. "elite_clipout.wav")
addsound("tacint_dualeagles.slide_back", path1 .. "slide_back.wav")
addsound("tacint_dualeagles.slide_release", path1 .. "slide_release.wav")
addsound("tacint_dualeagles.slide_shut", path .. "sliderelease.wav")

SWEP.Scope = false

SWEP.FreeAim = false