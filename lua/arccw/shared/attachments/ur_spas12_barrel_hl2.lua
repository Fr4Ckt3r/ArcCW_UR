att.PrintName = "21.5\" Freeman Barrel"
att.Icon = nil
att.Description = [[Futuristic fire control group and barrel accomodation that supports a two-round burst firemode. Replaces the original dual-mode mechanism, relegating the weapon to pump action in both modes.

The two-round burst can shred most targets, but depletes ammo quickly. The complicated mechanism also has a heavier pump.]]
att.Desc_Pros = {
    "ur.ak.burst"
}
att.Desc_Cons = {
    "ur.spas12.pump"
}

att.SortOrder = 21.5
att.Slot = "ur_spas12_barrel"
att.AutoStats = true

att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.pump",
        Override_ManualAction = true,
        Mult_AccuracyMOA = .9,
        Mult_HipDispersion = .8,
        Mult_RPM = 1,
    },
    {
        Mode = 1,
        PrintName = "ur.spas12.dbl",
        Override_ManualAction = true,
        Mult_AccuracyMOA = 1.1,
        Mult_HipDispersion = .8,

        Mult_Num = 2, -- Currently defunct
        Override_AmmoPerShot = 2,
        Mult_Recoil = 2,
        CustomBars = "--___"
    },
    {
        Mode = 0,
    },
}

att.Hook_GetShootSound = function(wep,sound)
    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        return "arccw_uc/common/gl_fire_buck.ogg"
    end
end
att.Hook_GetDistantShootSound = function(wep,sound)
    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        return "arccw_uc/common/gl_fire_buck_dist.ogg"
    end
end
att.Hook_SelectFireAnimation = function(wep,curanim)
    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        return "fire_2bst"
    end
end

att.Override_Firemodes_Priority = 2

att.Mult_CycleTime = 1.25