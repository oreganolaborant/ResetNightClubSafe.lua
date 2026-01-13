local ok, TAB = pcall(gui.add_tab, "Nightclub Safe Empty")
if not ok then return end

local function IsOnline()
    return network.is_session_started() and not script.is_active("maintransition")
end

local function ResetSafeToZero()
    if not IsOnline() then
        util.toast("Not Online!")
        return
    end

    -- Sets the Safe to 0
    stats.set_int("MP0_CLUB_SAFE_CASH_VALUE", 0)

    util.toast("Set Safe to 0")
end

TAB:add_button("Set Safe to 0 setzen", ResetSafeToZero)
TAB:add_text("Use when Safe is over 300K")   