local matugen = {
    primary = {
        "{{ colors.primary.default.hex }}",
        "{{ colors.on_primary_container.default.hex }}",
    },
    --secondary   = "{{ colors.secondary.default.hex }}",
    --secondary_2 = "{{ colors.on_secondary_container.default.hex }}",
    tertiary = {
        "{{ colors.tertiary.default.hex }}",
        "{{ colors.on_tertiary_container.default.hex }}",
    },
    outline = {
        "{{ colors.outline.default.hex }}",
        "{{ colors.outline_variant.default.hex }}",
    },
    error = "{{ colors.error.default.hex }}",
}

return matugen
