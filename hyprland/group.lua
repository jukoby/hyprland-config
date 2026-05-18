local color = require("hyprland.namespace.color")

hl.config({
    group = {
        auto_group = false,
        drag_into_group = 2,
        merge_groups_on_drag = false,

        -- col = color.DEFAULT_BORDER_COLOR,

        groupbar = {
            gaps_out = 2,
            gaps_in = 6,
            gradient_rounding = 5,
            gradient_round_only_edges = false,

            height = 14,
            keep_upper_gap = true,

            col = {
                active = "#EE555555",
                inactive = "#EE333333"
            },
            gradients = true,

            font_size = 10,
            font_weight_active = "bold",
            text_offset = 1,

            indicator_height = 0, -- indicator "disabled"
            scrolling = false
        }
    },
})
