local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local themes_path = "/usr/share/awesome/themes/default/"
local dpi = xresources.apply_dpi

-- Define a simple theme table
local theme = {
    font = "GohuFont11NerdFont",
    bg_normal = "#2E3440",
    fg_normal = "#D8DEE9",
    bg_focus = "#4C566A",
    fg_focus = "#ECEFF4",
    useless_gap = dpi(8),
    border_width = dpi(1),
    border_normal = "#3B4252",
    border_focus = "#81A1C1",
    taglist_squares_sel = nil,
    taglist_squares_unsel = nil,

    -- Layout Icons
    layout_fairh = themes_path .. "layouts/fairhw.png",
    layout_fairv = themes_path .. "layouts/fairvw.png",
    layout_floating = themes_path .. "layouts/floatingw.png",
    layout_magnifier = themes_path .. "layouts/magnifierw.png",
    layout_max = themes_path .. "layouts/maxw.png",
    layout_fullscreen = themes_path .. "layouts/fullscreenw.png",
    layout_tilebottom = themes_path .. "layouts/tilebottomw.png",
    layout_tileleft = themes_path .. "layouts/tileleftw.png",
    layout_tile = themes_path .. "layouts/tilew.png",
    layout_tiletop = themes_path .. "layouts/tiletopw.png",
    layout_spiral = themes_path .. "layouts/spiralw.png",
    layout_dwindle = themes_path .. "layouts/dwindlew.png",
    layout_fullscreen = themes_path .. "layouts/fullscreenw.png",
    layout_cornernw = themes_path .. "layouts/cornernw.png",
    layout_cornerne = themes_path .. "layouts/cornernew.png",
    layout_cornersw = themes_path .. "layouts/cornersww.png",
    layout_cornerse = themes_path .. "layouts/cornersew.png",

    -- Keybindings Font
    hotkeys_font = "GohuFont11NerdFont",
    hotkeys_description_font = "GohuFont11NerdFont",

}

return theme