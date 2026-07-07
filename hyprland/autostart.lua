local uwsm = require("hyprland.namespace.uwsm")

hl.on("hyprland.start", function ()
    uwsm.exec_all({
        "hyprlock || hyprctl dispatch exit",
        "walker --gapplication-service",
        "quickshell",
        "sunshine",
        "$scripts/update-notifier.sh"
    })
end)