SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Remington 1858 Army"
SWEP.AbbrevName = "Army"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Antique percussion revolver packing a punch up close, but is terribly slow to shoot. Suitable for cowboy roleplay."
SWEP.Description_Quote = "\"Pass the whiskey!\""

SWEP.Trivia_Caliber = ".44 Percussion"
SWEP.Trivia_Manufacturer = "Remington Arms"
SWEP.Trivia_Year = "1858"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Assets: Nimrod Hempel (Fistful of Frags)
Animation: CyloWalker
Quickthrow & melee animations: speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_1858.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_1858.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 65,
        Damage_Min = 32,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 58,
        Damage_Min = 18,
        Range_Min = 250,
        Range_Max = 2500,

        RPM = 60,
        ShootTimeMult = 1,
        Spread = 0.006,
        HipFireSpreadPenalty = 0.01,

        RecoilResetTime = 0.6,
        RecoilDissipationRate = 2,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 30,
        Damage_Min = 10,
        Range_Min = 900,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.015,
        RecoilDissipationRate = 5,
        RecoilResetTime = 0.75
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 50
SWEP.Damage_Min = 25
SWEP.Range_Min = 400 // distance for which to maintain maximum damage
SWEP.Range_Max = 1800 // distance at which we drop to minimum damage
SWEP.Penetration = 4 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.4
SWEP.ArmorBonus = 2

SWEP.MuzzleVelocity = 9001

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Single-Action" // only used externally for firemode name distinction

SWEP.RPM = 65

SWEP.Spread = 0.008

SWEP.ShootTimeMult = 0.8

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2.5
SWEP.RecoilResetTime = 0.35
SWEP.RecoilDissipationRate = 1.5
SWEP.RecoilFirstShotMult = 1.25

SWEP.RecoilVisualKick = 5
SWEP.RecoilKick = 8
SWEP.RecoilStability = 0.35
SWEP.RecoilAltMultiplier = 750

SWEP.RecoilSpreadPenalty = 0.012
SWEP.HipFireSpreadPenalty = 0.015
SWEP.MidAirSpreadPenalty = 0.02

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.17

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "pistol"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(-1, 3, -0.5)

SWEP.BlindFireAng = Angle(-5, 0, -5)
SWEP.BlindFirePos = Vector(0, 5, 0)

SWEP.BlindFireSuicideAng = Angle(-110, 0, 45)
SWEP.BlindFireSuicidePos = Vector(28, 6, -2)

SWEP.SprintAng = Angle(0, 35, 0)
SWEP.SprintPos = Vector(2, 2, -10)

SWEP.SightAng = Angle(-0.1, 0.5, 3.5)
SWEP.SightPos = Vector(-4.23, 2, 1.3)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(3.5, 0, -1)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1
SWEP.ScopedSway = 0.5

// reload

SWEP.ClipSize = 6
SWEP.Ammo = "357"

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/1858.mdl"
SWEP.DropMagazineImpact = "metal"
SWEP.DropMagazineTime = 1.2

SWEP.ReloadTimeMult = 0.9
SWEP.ReloadUpInTime = 2

SWEP.JamWaitTime = 1
SWEP.JamSkipFix = true
SWEP.JamTakesRound = true

// sounds

local path = "Tacint_shark/weapons/1858/"

SWEP.Sound_Shoot = "^" .. path .. "nma_fire.wav"

SWEP.Vol_Shoot = 115
SWEP.ShootPitchVariance = 2.5

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 0
SWEP.EjectEffect = 0

SWEP.MuzzleEffect = "muzzleflash_1"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["unholster"] = "draw_stock",
    ["dryfire"] = "fire_stock",
    ["fire"] = "fire",
    ["fire_iron"] = "fire",
    ["blind_fire"] = "blind_fire",
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "fire_stock",
}

SWEP.HolsterTimeMult = 0.75
SWEP.UnholsterTimeMult = 0.5

SWEP.AttachmentElements = {
    ["cylinder"] = {
        BGs_VM = {
            {1, 1}
        },
    },
}

// attachments

SWEP.NoTactical = true

SWEP.Attachments = {
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tac_1858",
        Bone = "sphinx_ROOT",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-2, 0.1, 6.5),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 5.5, -2.75),
        Ang_WM = Angle(0, -90, 180),
    },
    [5] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Trigger",
        Category = {"trigger_revolver"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_1858", "ammo_roulette"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

local function addsound(name, spath, volume)
    sound.Add({
        name = name,
        channel = 16,
        volume = volume or 1.0,
        sound = spath
    })
end

addsound("tacint_1858.lever_down", path .. "army_lever1.wav")
addsound("tacint_1858.pin_out", path .. "army_extract.wav")
addsound("tacint_1858.cylinder_out", path .. "army_cylinder_out.wav")
addsound("tacint_1858.cylinder_in", path .. "army_insert.wav")
addsound("tacint_1858.pin_in", path .. "army_lever1.wav")
addsound("tacint_1858.lever_up", path .. "twirl2.wav", 0.3)
addsound("tacint_1858.hammer", path .. "hammer.mp3")
addsound("tacint_1858.Deploy", path .. "twirl1.wav", 0.5)