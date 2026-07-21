local uwsm = require("hyprland.namespace.uwsm")

hl.on("hyprland.start", function ()
    uwsm.exec_all({
        "hyprlock || hyprctl dispatch exit",
    })
end)