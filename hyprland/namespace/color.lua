local success, matugen = pcall(require,"hyprland.namespace.matugen")

if not success then
    matugen = {
        primary = {
            "#86d4d0",
            "#000000",
        },
        --secondary   = "#aeccca",
        --secondary_2 = "#c8e6e4",
        tertiary = {
            "#7c82fc",
            "#000000",
        },
        outline = {
            "#889392",
            "#3e4948",
        },
        error = "#ffb4ab",
    }
end

return {
    default_border = {
        colors = matugen.primary,
        angle = 45
    },
    fullscreen_border = {
        colors = matugen.tertiary,
        angle = 45
    },
    inactive_border = {
        colors = {
            matugen.outline[1] .. "AA",
            matugen.outline[2] .. "AA",
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
}