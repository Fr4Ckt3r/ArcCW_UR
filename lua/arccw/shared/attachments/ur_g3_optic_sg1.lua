att.PrintName = "Zeiss Diavari DA 1.5-6x Sniper Scope"
att.AbbrevName = "G3SG/1 Optic (1.5-6x)"
att.Icon = Material("entities/att/pso1.png", "mips smooth")
att.Description = "Variable power scope, adjustable for a very wide range of magnifications.\nExclusive to the G3 pattern."

att.SortOrder = 300

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ur_g3_optic"}

att.Model = "models/weapons/arccw/scope_nomodel.mdl"
att.ModelOffset = Vector(-5.7, 0, 1.18)

att.AdditionalSights = {
    {
        Pos = Vector(0.01, 10.5, -1.18),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ScopeMagnificationMin = 1.5,
        ScopeMagnificationMax = 6,
        ScopeMagnification = 4.5,
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/SG1_reticle.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 10.5,
            HolosightPiece = "models/weapons/arccw/g3_optic_sg1_hsp.mdl",
            HolosightBlackbox = true,
            HolosightMagnification = 4.5,
            HolosightMagnificationMin = 1.5,
            HolosightMagnificationMax = 6,
            Colorable = true,
        },
    }
}

-- att.Holosight = true
-- att.HolosightReticle = Material("mifl_tarkov_reticle/dot.png", "mips smooth")

att.HolosightPiece = "models/weapons/arccw/g3_optic_sg1_hsp.mdl"
-- att.HolosightNoFlare = true
-- att.HolosightSize = 1
-- att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightedSpeedMult = .8
-- att.ExcludeFlags = {"ak_norail","cover_rail"}
