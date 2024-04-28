SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Tokarev TT-33"
SWEP.AbbrevName = "TT-33"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "1Pistol"

SWEP.Description = "Antique pistol from beyond the Iron Curtain. Unique ammo has high penetration and recoil."

SWEP.Trivia_Caliber = "7.62x25mm Tokarev"
SWEP.Trivia_Manufacturer = "Tula Arms Plant"
SWEP.Trivia_Year = "1933"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: Ultimate Bastard
Textures: Teh Snake
Sounds: Nightmare, Optical Snare
Animations: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_tt33.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_tt33.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 30,
        Damage_Min = 18,
        RPM = 400,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 25,
        Damage_Min = 14,
        Range_Min = 750,
        Range_Max = 2500,
        RPM = 260,

        RecoilSpreadPenalty = 0.005,
        RecoilFirstShotMult = 0.75,
        RecoilDissipationRate = 5,

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

        ReloadTimeMult = 1.15 * 1.25,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 14,
        Damage_Min = 7,
        RPM = 420,

        HipFireSpreadPenalty = 0.015,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 7
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Pistol

// "ballistics"

SWEP.Damage_Max = 30
SWEP.Damage_Min = 15
SWEP.Range_Min = 800
SWEP.Range_Max = 2200
SWEP.Penetration = 8
SWEP.ArmorPenetration = 0.85
SWEP.ArmorBonus = 0.75

SWEP.MuzzleVelocity = 13000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 360
SWEP.RPMMultSemi = 0.75

SWEP.Spread = 0.006

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 6
SWEP.RecoilResetTime = 0.15
SWEP.RecoilDissipationRate = 10
SWEP.RecoilFirstShotMult = 0.75

SWEP.RecoilVisualKick = 2
SWEP.RecoilKick = 7
SWEP.RecoilStability = 0.45

SWEP.RecoilSpreadPenalty = 0.0035

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

SWEP.Sway = 1
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-125, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 12, -6)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(-0.01, 0.65, 0)
SWEP.SightPos = Vector(-3.2, 0, -3.2)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)


// reload

SWEP.ClipSize = 8
SWEP.Ammo = "pistol"

SWEP.ReloadUpInTime = 1
SWEP.DropMagazineTime = 0.25

SWEP.ReloadTimeMult = 1

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/tt33.mdl"
SWEP.DropMagazineImpact = "pistol"

// sounds

local path = "tacint_shark/weapons/tt33/tt33_"
local path1 = "tacrp/weapons/p250/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "p250_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire_iron"] = "shoot3",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "midreload"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.6),
    vm_ang = Angle(0, 2, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "ValveBiped.slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(-15, 0, 0),
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

SWEP.LastShot = true

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.vertec_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.5,
        WMScale = 0.65,
        Pos_VM = Vector(-3, -0.02, 9.6),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 9, -1.75),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
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

addsound("tacint_tt33.clip_in", path .. "clipin.wav")
addsound("tacint_tt33.clip_in-mid", path .. "clipin.wav")
addsound("tacint_tt33.clip_out", path .. "clipout.wav")
addsound("tacint_tt33.slide_action", path .. "slide.wav")
addsound("tacint_tt33.slide_shut", path .. "sliderelease.wav")
addsound("tacint_tt33.cock_hammer", path .. "cockhammer.wav")
