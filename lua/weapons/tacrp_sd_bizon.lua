SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "PP-19 Bizon"
SWEP.AbbrevName = "Bizon"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "3Submachine Gun"

SWEP.Description = "AK-derrivative SMG with a high-capacity helical magazine.  Pretty weak but easy to control and handle."

SWEP.Trivia_Caliber = "9x18mm"
SWEP.Trivia_Manufacturer = "Izhmash"
SWEP.Trivia_Year = "1996"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model: Twinke Masta \nTexture: Milo \nSound: Vunsunta \nAnimations: Tactical Intervention, edited by speedonerd"

SWEP.ViewModel = "models/weapons/tacint_shark/v_bizon.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_bizon.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 16,
        Damage_Min = 9,
        Spread = 0.008,
        FreeAimMaxAngle = 3,

        RecoilKick = 2,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 9,
        Damage_Min = 5,

        Range_Min = 500,
        Range_Max = 2000,

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
        Spread = 0.02
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 15
SWEP.Damage_Min = 10
SWEP.Range_Min = 600
SWEP.Range_Max = 2500
SWEP.Penetration = 7 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.725

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
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

SWEP.RPM = 700

SWEP.Spread = 0.012

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 20
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.5
SWEP.RecoilKick = 1.5
SWEP.RecoilStability = 0.3
SWEP.RecoilAltMultiplier = 400

SWEP.RecoilSpreadPenalty = 0.002
SWEP.HipFireSpreadPenalty = 0.05

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.95
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.65

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.32

SWEP.Sway = 1
SWEP.ScopedSway = 0.2

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.1, -0.5, -1)
SWEP.SightPos = Vector(-4.66, -7.6, -2.7)

SWEP.CorrectivePos = Vector(0, 0, -0.07)
SWEP.CorrectiveAng = Angle(0.8, 0.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, -2, -6)
SWEP.HolsterAng = Angle(0, 0, 0)


SWEP.ClipSize = 64
SWEP.Ammo = "pistol"
SWEP.Ammo_Expanded = "ti_pistol_light"

SWEP.ReloadTimeMult = 1.2
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/bizon.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.65
SWEP.DropMagazineTime = 0.65

SWEP.FreeAimMaxAngle = 5

// sounds

local path = "tacint_shark/weapons/bizon/"
local path1 = "tacint_shark/weapons/ar57/"
local path2 = "tacrp/weapons/ak47/ak47_"

SWEP.Sound_Shoot = "^" .. path .. "p90-1.wav"
SWEP.Sound_Shoot_Silenced = path2 .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
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
    ["deploy"] = "deploy",
    ["fire_iron"] = "fire1_M",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "mid_reload"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.75, -0.12),
    vm_ang = Angle(0, 0.3, 0),
    t = 0.25,
    tmax = 0.25,
    bones = {
        {
            bone = "ValveBiped.bolt",
            pos = Vector(0, 0, -3),
            t0 = 0.05,
            t1 = 0.2,
        },
    },
}

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["akmount"] = {
        BGs_VM = {
            {2, 0}
        },
        BGs_WM = {
            {2, 0}
        },
        AttPosMods = {
            [1] = {
                VMScale = 0.7,
                Pos_VM = Vector(-5, 0.5, 2),
                Pos_WM = Vector(-0.4, 1, 0.5),
            }
        },
        SortOrder = 2,
    }
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper", "optic_ak"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"tactical"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.8,
        Pos_VM = Vector(-5.55, 0.15, 4),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(-0.1, 2.25, 1),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"silencer", "muzz_ak"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.95,
        WMScale = 0.85,
        Pos_VM = Vector(-3.54, 0.1, 19.7),
        Pos_WM = Vector(-0.1, 18.5, -1.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.5, -0.3, 13),
        Pos_WM = Vector(0.5, 9, -1),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, -90, -90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_sling", "acc_duffle", "acc_extmag_smg"},
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

addsound("tacint_bizon.remove_clip", path1 .. "magout1.wav")
addsound("tacint_bizon.insert_clip", path1 .. "magtap.wav")
addsound("tacint_bizon.boltaction", path2 .. "boltaction.wav")
addsound("tacint_bizon.Buttstock_Back", path2 .. "buttstock_back.wav")