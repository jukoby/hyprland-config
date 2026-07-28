local color = require("hyprland.namespace.color")

hl.config({
    general = {
        layout = "master"
    },

    master = {
        mfact = 0.57,
        new_status = "slave",
        orientation = "right"
    }
})

-- Smart gaps
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })

hl.window_rule({
    name = "Supress Maximize Request",
    match = { class = "*" },
    suppress_event = "maximize"
})

hl.window_rule({
    name = "xWayland",
    match = { xwayland = true },
    border_color = color.warning_border
})

hl.window_rule({
    name = "Portal",
    match = { class = "xdg-desktop-portal.*|hyprland-share-picker" },
    float = true,
    center = true,
    size =  {1000, 1000}
})

hl.window_rule({
    name = "Fullscreen",
    match = { fullscreen = true },
    border_color = color.fullscreen_border
})

hl.window_rule({
    name = "Polkit elevated",
    match = { class = "hyprpolkitagent" },
    border_color = "#FF0000",
    dim_around = true,
    stay_focused = true
})

hl.window_rule({
    name = "Opacity",
    match = { class = "Alacritty" },
    opacity = 0.95
})

hl.layer_rule {
    name = "No animation for quickshell",
    match = { namespace = "quickshell" },
    no_anim = true
}

-- Games
hl.window_rule({ match = { content = "game" }, tag = "+game" })
hl.window_rule({ match = { class = "steam_app.*" }, tag = "+game" })
hl.window_rule({ match = { class = "UnleashedRecomp" }, tag = "+game" })
hl.window_rule({
    name = "Games",
    match = { tag = "game" },
    monitor = "DP-1",
    workspace = "special:game",
    fullscreen = true,
    float = true,
    immediate = true
})
