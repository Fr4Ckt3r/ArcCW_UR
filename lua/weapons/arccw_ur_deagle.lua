SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/9.mdl"
SWEP.ShellScale = 1.6
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 0
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "Predator .50"

-- True name --

SWEP.TrueName = "Desert Eagle"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Unorthodox pistol in both weight and design, marketed as an alternative to high-caliber revolvers. Its large round can easily blast a human skull apart. Despite its imposing status in action culture, it’s rare in service because of its massive, bulky frame and needlessly large caliber.\n\nWe both know that won’t stop you."
SWEP.Trivia_Manufacturer = "ISM"
SWEP.Trivia_Calibre = ".50 Action Express"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "Israel"
SWEP.Trivia_Year = 1983

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Magnum Research"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

-- Damage parameters --

SWEP.Damage = 65 -- 2 shot close range kill
SWEP.DamageMin = 31 -- 4 shot long range kill
SWEP.RangeMin = 12
SWEP.Range = 40
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 470 

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 7
SWEP.ExtendedClipSize = 14
SWEP.ReducedClipSize = 5

-- Recoil --

SWEP.Recoil = 2.25
SWEP.RecoilSide = 0.5

SWEP.RecoilRise = 0.3
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.4
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 1.11

-- Firerate / Firemodes --

SWEP.Delay = 60 / 275
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC -- 

SWEP.NPCWeaponType = "weapon_revolver"
SWEP.NPCWeight = 71

-- Accuracy --

SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 550
SWEP.MoveDispersion = 700

SWEP.Primary.Ammo = "357"
SWEP.MagID = "deagle"

-- Speed multipliers --

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.84
SWEP.SightTime = 0.45

-- Length --

SWEP.BarrelLength = 20
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(-0.5, 1, 0)
SWEP.HolsterAng = Angle(-5, 15, -20)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.55, 10, 1.05),
     Ang = Angle(0.6, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0.2, 2, 1.5)
SWEP.ActiveAng = Angle(0, 0, -2)

SWEP.CustomizePos = Vector(-1, -2, 1)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10.5, 2.5, -5),
    ang        =    Angle(-6, -6, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = ")^weapons/arccw_ur/deagle/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "lowpolyfal_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {

    ["nofh"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
    },
    ["nors"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
    ["skin_black"] = {
        VMSkin = 2,
    },
}

SWEP.Hook_NameChange = function(wep, name)
    if !GetConVar("arccw_truenames"):GetBool() then
        local add = ".50"
        local cal = wep.Attachments[3].Installed

        if cal == "ur_deagle_caliber_357" then
            add = ".357"
        elseif cal == "ur_deagle_caliber_44" then
            add = ".44"
        end

        return "Predator " .. add
    else
        return "Desert Eagle"
    end
end

-- Animations --

SWEP.Animations = {
    ["idle_empty"] = {
        Source = "idle_empty",
        framerate = 60,
        Time = 120 / 60,
    },
    ["idle"] = {
        Source = "idle",
        framerate = 60,
        Time = 120 / 60,
    },
    ["ready"] = {
        Source = "ready",
        framerate = 60,
        Time = 73 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = path .. "rack1.ogg", t = 10 / 60, c = ca },
            { s = path .. "rack2.ogg", t = 25 / 60, c = ca },
        },
    },
    ["draw"] = {
        Source = "idle",
        framerate = 60,
    },
    ["fire"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        framerate = 60,
        Time = 0.9,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = path .. "mech.ogg", t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        framerate = 60,
        Time = 0.9,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = path .. "mech_last.ogg", t = 0 }},
    },

    -- 7-R Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 2,
        Time = 126 / 60,
        framerate = 60,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.6,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 62 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 72 / 60, c = ca },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        framerate = 60,
        Time = 152 / 60,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.55,
        LHIKOut = 0.7,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout_old.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 60 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 70 / 60, c = ca },
            { s = path .. "chamber.ogg", t = 97 / 60, c = ca },
            { s = rottle, t = 75 / 60, c = ca },
        },
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 35 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 72 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 66 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 100 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 104 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 110 / 60, c = ca },
            { s = path .. "rack1.ogg", t = 147 / 60, c = ca },
            { s = rottle, t = 160 / 60, c = ca },
            { s = path .. "rack2.ogg", t = 170 / 60, c = ca },
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 35 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 72 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 66 / 60,
        framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 100 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 104 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 110 / 60, c = ca },
            { s = rottle, t = 160 / 60, c = ca },
        },
    },
}

-- ADS animation blending, thanks fesiug -- 

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) )
end


-- Attachments --

SWEP.CamAttachment = 3

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp"},
        DefaultAttName = "Iron Sights",
        Bone = "Slide",
        Offset = {
            vpos = Vector(0, -1, 2),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel",
        Slot = {"ur_deagle_barrel"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defhand.png"),
        DefaultAttName = "6\" Standard Barrel",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Caliber",
        Slot = {"ur_deagle_caliber"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defhand.png"),
        DefaultAttName = ".50 Action Express",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, 0.3),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -3.7, 7),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_deagle_mag"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defmag.png"),
        DefaultAttName = "7-Round Mag",
    },
    {
        PrintName = "Stock",
        Slot = {"uc_stock", "go_stock_pistol_bt"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defstock.png"),
        VMScale = Vector(0.9,0.9,0.9),
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -0.2, -16),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Factory Grip",
        Slot = "ur_deagle_grip"
    },  
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        Slot = "uc_ammo",
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
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.5, -0.1, -14),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Finish",
        Slot = {"ur_deagle_skin"},
        DefaultAttName = "Stainless Steel",
        FreeSlot = true,
    },
}