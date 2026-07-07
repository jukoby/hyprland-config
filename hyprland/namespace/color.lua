local matugen = require("hyprland.namespace.matugen")

local color = {
    default_border = {
        colors = {
            matugen.primary,
            matugen.secondary,
        },
        angle = 45
    },
    fullscreen_border = {
        colors = {
            matugen.tertiary,
            matugen.secondary,
        },
        angle = 45
    },
    warning_border = {
        colors = {
            matugen.error,
            matugen.error .. "55",
        },
        angle = 45
    },
    inactive_border = {
        colors = {
            matugen.outline .. "AA",
            matugen.outline_2 .. "AA",
        },
        angle = 45
    }
}

return color