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
        "monitor-sensor --accel",
        "awww-daemon",
        "walker --gapplication-service",
        "quickshell",
        "sunshine",
        "$scripts/update-notifier.sh",
    })
    set_monitor_bg("eDP-1", "moon.gif")
end)