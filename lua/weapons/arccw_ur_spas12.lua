SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

-- Fake name --

SWEP.PrintName = "Martello 12/70" -- Italian for "hammer"

-- True name --

SWEP.TrueName = "SPAS-12"

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = [[Flexible combat shotgun with the ability to toggle between manual and semi-automatic action. This "dual-mode" operation, marketed to law enforcement, allows the weapon to accept low pressure, less-lethal ammunition that lacks the energy to properly extract.
The weapon's attempts to reach the American civilian market may have been struck down by legal encumberances, but it remains prominent in culture for its intimidating appearance.

Switch to pump-action mode to increase accuracy and aid ammo conservation.]]
SWEP.Trivia_Manufacturer = "Iscapelli Armaments"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Hybrid"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 1979

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Luigi Franchi SpA"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_spas12.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_spas12.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-6.6, 4, -7.7),
    ang        =    Angle(0, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage parameters --

SWEP.Damage = 18 -- 6 pellets to kill
SWEP.DamageMin = 10 -- 10 pellets to kill
SWEP.Range = 40
SWEP.RangeMin = 6
SWEP.Num = 8
SWEP.Penetration = 2
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 200

SWEP.HullSize = 0.25

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 7
SWEP.ChamberLoadEmpty = 1

-- Recoil --

SWEP.Recoil = 2.5
SWEP.RecoilSide = 2

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 220
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 1,
        PrintName = "fcg.pump",
        Override_ManualAction = true,
        Mult_AccuracyMOA = .9,
        Mult_HipDispersion = .8,
        Mult_RPM = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShotgunReload = true
SWEP.NoLastCycle = true

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 25
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 125
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "buckshot"

-- Speed multipliers --

SWEP.SpeedMult = 0.88
SWEP.SightedSpeedMult = 0.6
SWEP.SightTime = 0.625
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 50
SWEP.ExtraSightDist = 10

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.75, -4, 1.2),
     Ang = Angle(.345, .03, 0),
     Magnification = 1.05,
     SwitchToSound = "",
}

SWEP.HolsterPos = Vector(-0.5, -4, -3)
SWEP.HolsterAng = Angle(3.5, 7, -20)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(3, 0, -4.5)

-- Firing sounds --

local path1 = ")^weapons/arccw_ud/870/"
local path = ")^weapons/arccw_ur/spas12/"
local common = ")^/arccw_uc/common/"
SWEP.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg"}
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg"}
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.ShootDrySound = common .. "manual_trigger.ogg"

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

SWEP.Hook_SelectFireAnimation = function(wep,data)
    if wep:GetCurrentFiremode().Override_ManualAction then
        return "fire_manual"
    end
end
SWEP.Hook_SelectReloadAnimation = function(wep,curanim)
    if wep:GetCurrentFiremode().Override_ManualAction and curanim == "sgreload_start_empty" then
        return "sgreload_start_empty_manual"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        --Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        --Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        --Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        --Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire_semi",
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg"}, t = 0 }},
    },
    ["fire_manual"] = { -- No bolt cycling
        Source = "fire_pump",
        Time = 23 / 25,--30,
        ShellEjectAt = false,
        SoundTable = {{ s = common .. "manual_trigger.ogg", t = 0 }},
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 30 / 30,
        ShellEjectAt = 0.01,
        MinProgress = .5,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0},
            {s = path .. "forearm_back.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.1},
            {s = path .. "forearm_forward.ogg", t = 0.2}, -- Not temporary
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["sgreload_start"] = {
        Source = "sgreload_start",
        Time = 25 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKOut = 0,
    },
    ["sgreload_start_empty"] = {
        Source = "sgreload_start_empty_semi",
        Time = 80 / 30,
        -- MinProgress = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "breechload.ogg",  t = 0.05},
            {s = path .. "breechclose.ogg",  t = 0.7},
        },
        ForceEmpty = true,
    },
    ["sgreload_start_empty_manual"] = {
        Source = "sgreload_start_empty",
        --Time = 40 / 30,
        MinProgress = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "breechload.ogg",  t = 0.05},
            {s = path .. "breechclose.ogg",  t = 0.7},
        },
        ForceEmpty = true,
    },
    ["sgreload_insert"] = {
        Source = "sgreload_insert",
        Time = 18 / 30,
        MinProgress = 0.24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = {common .. "shotgun-insert-alt-01.ogg", common .. "shotgun-insert-alt-02.ogg", common .. "shotgun-insert-alt-03.ogg"},  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05},
        },
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        Time = 40 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.8,
        SoundTable = {
            {s = common .. "shoulder.ogg",  t = 0.4},
        },
    },
}

SWEP.BulletBones = {
    --[1] = "1014_shell1",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic", "sniper_optic"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, -2, 3.5),
            vang = Angle(90, 2, -90),
        },
        SlideAmount = {
            vmin = Vector(0, -2, 2),
            vmax = Vector(0, -2, 5)
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "21.5\" Special Purpose Barrel", --16\" M4 Super 90 SBS Barrel
        DefaultAttIcon = Material("entities/att/acwatt_ud_m1014_barrel.png", "smooth mips"),
        Slot = "ur_spas12_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(-0.02, -0.785, 30.2),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"nomuzzle"}
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, 2, 12),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, 1, 19.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"ud_1014_stock"},
        DefaultAttName = "Extended Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m1014_stock.png", "smooth mips"),
    },
    {
        PrintName = "Tube Type",
        Slot = {"ud_1014_tube"},
        DefaultAttName = "7 Shell Tube",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m1014_tube.png", "smooth mips"),
        DefaultEles = {"ud_autoshotgun_tube_short"},
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"BUCK\" #00 Buckshot",
        Slot = {"ud_ammo_shotgun","ur_ammo_spas12"},
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0.6, -0.5, 4),
            vang = Angle(90, 0, -90),
        },
    },
}

local lookup_barrel = {
    default = 1,
    ur_spas12_barrel_short = 0,
}

local lookup_tube = {
    default = 1,
    ur_spas12_tube_ext = 2,
    ur_spas12_tube_short = 0,
}

SWEP.Hook_ExtraFlags = function(wep, data)

    local barrel = wep.Attachments[2].Installed and lookup_barrel[wep.Attachments[2].Installed] or lookup_barrel["default"]
    local tube = wep.Attachments[7].Installed and lookup_tube[wep.Attachments[7].Installed] or lookup_tube["default"]

    if barrel < tube then
        table.insert(data, "nomuzzleblocking")
    end
end