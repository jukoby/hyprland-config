local color = require("hyprland.namespace.color")

hl.config({
    general = {
        border_size = 2,
        gaps_in = 3,
        gaps_out = 4,
        col = {
            active_border = color.default_border,
            inactive_border = color.inactive_border,
        },
        resize_on_border = true,
        allow_tearing = true,

        snap = {
            enabled = true
        },
    },

    binds = {
        workspace_back_and_forth = true,
        allow_workspace_cycles = true,
        workspace_center_on = 1,
        ignore_group_lock = false,
        movefocus_cycles_groupfirst = true,
    },

    render = {
        direct_scanout = 2,
        ctm_animation = 0,
    },

    misc = {
        disable_hyprland_logo = true,
        vrr = 3,
        allow_session_lock_restore = true,
        middle_click_paste = false,
        size_limits_tiled = true,
        disable_autoreload = false,
    },

})
