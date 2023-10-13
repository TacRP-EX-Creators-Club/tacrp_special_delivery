SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Winchester Super X3"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Civilian sporting shotgun, engineered for performance.  Long barrel and competition choke offer great control and range but poor handling."

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Winchester Repeating Arms"
SWEP.Trivia_Year = "2006"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Model,Textures & Sound: No More Room in Hell \nAnimations: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_shark/v_superx3.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_superx3.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 13,
        Damage_Min = 5,

        FreeAimMaxAngle = 5,

        MoveSpeedMult = 0.85,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 10,
        Damage_Min = 3,
        Range_Min = 300,
        Range_Max = 2000,
        RPM = 180,

        FreeAimMaxAngle = 5,

        RecoilSpreadPenalty = 0.02,

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

        ReloadTimeMult = 1.4,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.5,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.75,
        ReloadSpeedMult = 0.5,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 11,
        Damage_Min = 7,
        RPM = 240,

        RecoilKick = 8,
        RecoilSpreadPenalty = 0.0075,
        Spread = 0.02,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 1.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.9
        },

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 0.9,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {}
}


SWEP.TTTReplace = TacRP.TTTReplacePreset.AutoShotgun

// "ballistics"

SWEP.ShootTimeMult = 0.5

SWEP.Damage_Max = 10
SWEP.Damage_Min = 7
SWEP.Range_Min = 700 // distance for which to maintain maximum damage
SWEP.Range_Max = 3200 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.7
SWEP.ArmorBonus = 1

SWEP.Num = 6

SWEP.MuzzleVelocity = 12000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 185

SWEP.Spread = 0.018
SWEP.ShotgunPelletSpread = 0.012

SWEP.MidAirSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.2 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 3
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 6
SWEP.RecoilStability = 0.6
SWEP.RecoilAltMultiplier = 600

SWEP.RecoilSpreadPenalty = 0.014
SWEP.HipFireSpreadPenalty = 0.02

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.8
SWEP.ShootingSpeedMult = 0.65
SWEP.SightedSpeedMult = 0.75

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.45
SWEP.SprintToFireTime = 0.5

// hold types

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -6)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, -1, -2)

SWEP.SightAng = Angle(0.2, 0.5, 0)
SWEP.SightPos = Vector(-2.9, -5, -4.2)

SWEP.SightPos = Vector(-2.815, -4, -4.225)
SWEP.SightAng = Angle(0.4, -0.8, 0)

SWEP.CorrectivePos = Vector(-0.03, 0, -0.1)
SWEP.CorrectiveAng = Angle(0.395, 1.039, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.Sway = 0.8
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 3.5

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.2

SWEP.JamBaseMSB = 9

// sounds

// local path = "tacrp/weapons/m4star10/"

SWEP.Sound_Shoot = "tacint_shark/weapons/auto5/winchestersx3_fire_02.wav"
SWEP.Sound_Shoot_Silenced = "tacint/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_m3"
SWEP.EjectEffect = 3

hook.Add("TacRP_LoadShellEffects", "tacrp_sd_superx3", function(tbl)
    local i = table.insert(tbl, {
        Model = "models/tacint/shells/shotgun_shell_green.mdl",
        Sounds = {
            "TacRP/shells/shotshell_drop-1.wav",
            "TacRP/shells/shotshell_drop-2.wav",
            "TacRP/shells/shotshell_drop-3.wav",
            "TacRP/shells/shotshell_drop-4.wav",
            "TacRP/shells/shotshell_drop-5.wav",
        }
    })
    local wep = weapons.GetStored("tacrp_sd_superx3")
    if wep then
        wep.EjectEffect = i
    end
end)


// anims

SWEP.AnimationTranslationTable = {
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"},
    ["jam"] = "reload_finish"
}

SWEP.AttachmentElements = {
    ["extmag"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["tacrail"] = {
        BGs_VM = {
            {3, 1}
        },
    },
}

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped._ROOT_Super90",
        InstalledElements = {"tacrail"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.85,
        Pos_VM = Vector(-5.3, 0.2, 7),
        Pos_WM = Vector(9, 1.5, -5.9),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped._ROOT_Super90",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.25,
        Pos_VM = Vector(-3.5, 0.8, 18),
        Pos_WM = Vector(21, 0.8, -4.25),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(0, 0, -90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_duffle", "acc_extmag_shotgun", "acc_sling"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
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
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun2"},
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

addsound("tacint_auto5.Insertshell",
    {
        "tacint_shark/weapons/auto5/shotgun_semiauto_reload1.wav",
        "tacint_shark/weapons/auto5/shotgun_semiauto_reload2.wav",
        "tacint_shark/weapons/auto5/shotgun_semiauto_reload3.wav",
        "tacint_shark/weapons/auto5/shotgun_semiauto_reload4.wav",
        "tacint_shark/weapons/auto5/shotgun_semiauto_reload5.wav",
    }
)
addsound("tacint_Bekas.Movement", "tacrp/weapons/bekas/movement-1.wav")
addsound("tacint_auto5.Bolt_Back", "tacint_shark/weapons/auto5/shotgun_semiauto_slide1.wav")
addsound("tacint_auto5.Bolt_release", "tacint_shark/weapons/auto5/shotgun_semiauto_slide2.wav")
addsound("tacint_m4.throw_catch", "tacrp/weapons/m4/m4_throw_catch.wav")