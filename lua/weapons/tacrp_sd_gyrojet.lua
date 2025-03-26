SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "MBA Gyrojet"
SWEP.AbbrevName = "Gyrojet"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "7Special Weapon"

SWEP.Description = "Experimental weapon firing self-propelled mini-rockets. While they are powerful, the rounds are prone to failure."
SWEP.Description_Quote = "\"I wonder how much his remains would go for on Ebay.\"" // Postal 2 - Completely unrelated but its funi

SWEP.Trivia_Caliber = ".51 Caliber"
SWEP.Trivia_Manufacturer = "MBAssociates" // i checked every credible source and they dont put a space between MB and associates please dont change this
SWEP.Trivia_Year = "1962"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model & Textures: RedRougeXIII
Sounds: speedonerd, Tactical Intervention
Animations: speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_gyrojet.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_gyrojet.mdl"

SWEP.NoRanger = false

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 50,
        Damage_Min = 50,
    },
    [TacRP.BALANCE_PVE] = {

        Damage_Max = 30,
        Damage_Min = 30,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        Description = "Experimental pistol firing self-propelled minirockets. Powerful but inaccurate, projectiles have significant travel time.",
        ClipSize = 5,
        JamFactor = 0,
        Spread = 0.022
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Pistol

// "ballistics"

SWEP.Damage_Max = 75
SWEP.Damage_Min = 75

SWEP.Range_Min = 9000
SWEP.Range_Max = 9000

SWEP.Penetration = 20
SWEP.ArmorPenetration = 1

SWEP.ShootEnt = "tacrp_proj_gyrojet"
SWEP.ShootEntForce = 15000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
    [HITGROUP_GEAR] = 1
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 180

SWEP.Spread = 0.0025

SWEP.ShootTimeMult = 0.7

SWEP.JamFactor = 0.25

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 4
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 2

SWEP.RecoilSpreadPenalty = 0.01

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

SWEP.Sway = 1.05
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, 0, 0)

SWEP.CustomizeAng = Angle(35, 15, 0)
SWEP.CustomizePos = Vector(9, 0, -3)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(-1, -2, -2)

SWEP.BlindFireLeftAng = Angle(80, -2, 0)
SWEP.BlindFireLeftPos = Vector(15, 5, -9)

SWEP.BlindFireRightAng = Angle(-80, -2, 0)
SWEP.BlindFireRightPos = Vector(-4, 20, -11)

SWEP.BlindFireSuicideAng = Angle(-135, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 19, -5)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(1, -5, -8)

SWEP.SightAng = Angle(0.22, -0.7, 0)
SWEP.SightPos = Vector(-3.72, -4, 1.45)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.CorrectivePos = Vector(0, 0, 0)
SWEP.CorrectiveAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 6
SWEP.Ammo = "357"

SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.1

// sounds

local path = "tacint_shark/weapons/gyrojet/"
local path1 = "tacrp/weapons/xd45/"

SWEP.Sound_Shoot = "^" .. path .. "fire.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

SWEP.EffectsAlternate = true
SWEP.EffectsDoubled = true

SWEP.QCA_MuzzleL = 1
SWEP.QCA_MuzzleR = 4
SWEP.QCA_EjectL = 2
SWEP.QCA_EjectR = 3

SWEP.EjectEffect = 0

SWEP.MuzzleEffect = "muzzleflash_suppressed"

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
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.6),
    vm_ang = Angle(0, 2, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "gyrojet_hammer",
            ang = Angle(0, 0, -45),
            t0 = 0,
            t1 = 0.15,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.2,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
    },
}

SWEP.LastShot = false

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace", "bolt_jammable"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Ammo",
        Category = {"ammo_gyrojet"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
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

addsound("tacint_gyrojet.slide_back", {
    path1 .. "slide_back-1.wav",
    path1 .. "slide_back-2.wav",
})
addsound("tacint_gyrojet.Catch",
	{
		path .. "gyrojet_reloadcatch.wav",
		path .. "gyrojet_reloadcatch2.wav",
	}
)
addsound("tacint_gyrojet.hammer", path .. "gyrojet_cockhammer.wav")
addsound("tacint_gyrojet.insert",
    {
        path .. "gyrojet_insert1.wav",
        path .. "gyrojet_insert2.wav",
        path .. "gyrojet_insert3.wav",
    }
)

if engine.ActiveGamemode() == "terrortown" then
    SWEP.HolsterVisible = false
    SWEP.AutoSpawnable = false
    SWEP.Kind = WEAPON_PISTOL
    SWEP.CanBuy = { ROLE_TRAITOR, ROLE_DETECTIVE }
    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "High damage pistol firing mini-rockets.\nUses standard magnum ammo.",
    }
end
