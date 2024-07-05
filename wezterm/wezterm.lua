local wezterm = require("wezterm")
local config = {
    font_size = 15,
    font = wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "Regular" }),
    color_scheme = "Catppuccin Mocha",

    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
}

return config
