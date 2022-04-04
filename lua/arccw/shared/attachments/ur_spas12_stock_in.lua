att.PrintName = "Folded Stock"
att.Icon = Material("entities/att/acwatt_ud_m1014_stock_in.png", "smooth mips")
att.Description = [[Folding the stock makes the weapon significantly shorter, allowing for easier use around corners and making it easier on the move at the cost of less stability.

Contrary to some depictions, the stock obstructs iron sights when folded.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ur.spas12.folded",
    "uc.nooptics"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_spas12_stock"
att.AttachSound = "arccw_uc/common/stockslide.ogg"

att.AutoStats = true
att.Free = true
att.IgnorePickX = true

att.Mult_Recoil = 1.1
att.Mult_RecoilSide = 1.25

att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.1

att.Mult_Sway = 1.5
att.Add_BarrelLength = -8

att.Override_IronSightStruct = {
    Pos = Vector(-1 ,4, 0),
     Ang = Angle(0, 0, 0),
     Magnification = 1.075,
     SwitchToSound = "",
     CrosshairInSights = true,
}

att.Hook_TranslateAnimation = function(wep,anim)
    if string.StartWith(anim,"sgreload") then
        return anim .. "_fold"
    end
end

att.GivesFlags = {"spas12_foldstock"}