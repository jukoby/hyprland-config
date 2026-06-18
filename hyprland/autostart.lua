local user_dirs = require("hyprland.namespace.user-dirs")
local uwsm = require("hyprland.namespace.uwsm")

local bg_path = user_dirs.PICTURES .. "/bg/"

---@param device string
---@param name string
local set_monitor_bg = function (device, name)
    uwsm.exec("awww img -o " .. device .. " " .. bg_path .. name)
end

hl.on("hyprland.start", function ()
    uwsm.exec_all({
        "hyprlock || hyprctl dispatch exit",
        "awww-daemon",
        "walker --gapplication-service",
        "quickshell",
        "sunshine",
        "$scripts/update-notifier.sh"
    })
    set_monitor_bg("DP-1", "proxy-image.gif")
    set_monitor_bg("DP-2", "6640423.gif")
    set_monitor_bg("HDMI-A-1", "1d4d8632-15cb-4b1c-a847-5b6fc458784f_forever-2x.gif")
end)