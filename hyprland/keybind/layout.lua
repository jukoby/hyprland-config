local uwsm = require("hyprland.namespace.uwsm")

hl.bind("SUPER + mouse:272",    hl.dsp.window.drag(),   { mouse = true })

-- Controls
-----------------------------------------------------------
hl.bind("F15",
    hl.dsp.layout("rollprev"),
    { desc = "Swap Master" }
)

hl.bind("SHIFT + F15",
    hl.dsp.layout("cyclenext"),
    { desc = "Swap Focus" }
)

hl.bind("SUPER + F15",
    hl.dsp.window.cycle_next({prev = true, visible = true}),
    { desc = "Swap Global Focus" }
)

hl.bind("SUPER + SHIFT + F15",
    hl.dsp.window.cycle_next({next = true, visible = true}),
    { desc = "Swap Global Focus" }
)
-- hl.bind("CTRL + F15")
-- hl.bind("ALT + F15")

hl.bind("F16",
    hl.dsp.window.fullscreen({ mode = "maximized" }),
    { desc = "Maximize" }
)

hl.bind("SHIFT + F16",
    hl.dsp.window.fullscreen({ mode = "fullscreen" }),
    { desc = "Fullscreen" }
)

-- hl.bind("SUPER + F15")
hl.bind("CTRL + F16",
    uwsm.dsp("togglefloating"),
    { desc = "Toggle Floating" }
)

hl.bind("ALT + F16",
    uwsm.dsp("exec (pidof hypridle && pkill -9 hypridle) || hypridle"),
    { desc = "Idle toggle" }
)


-- Workspaces
-----------------------------------------------------------
hl.bind("F17",
    hl.dsp.focus({ workspace = "m-1" }),
    { desc = "Swap Monitor Workspace" }
)

hl.bind("SHIFT + F17",
    hl.dsp.focus({ workspace = "m+1" }),
    { desc = "Swap Monitor Workspace" }
)

hl.bind("SUPER + F17",
    hl.dsp.window.move({ workspace = "m-1", follow = false }),
    { desc = "Move Window to Workspace" }
)

hl.bind("SHIFT + SUPER + F17",
    hl.dsp.window.move({ workspace = "m+1", follow = false }),
    { desc = "Move Window to Workspace" }
)

hl.bind("CTRL + F17",
    hl.dsp.focus({ monitor  = "-1" }),
    { desc = "Move Focus across Monitors" }
)

hl.bind("SHIFT + CTRL + F17",
    hl.dsp.focus({ monitor  = "+1" }),
    { desc = "Move Focus across Monitors" }
)

hl.bind("ALT + F17",
    hl.dsp.window.move({ monitor = "-1" }),
    { desc = "Move Window across Monitors" }
)

hl.bind("ALT + SHIFT + F17",
    hl.dsp.window.move({ monitor = "+1" }),
    { desc = "Move Window across Monitors" }
)

hl.bind("SUPER + CTRL + F17",
    hl.dsp.workspace.toggle_special("game"),
    { desc = "Move Window to Workspace" }
)


-- Groups
-----------------------------------------------------------
hl.bind("F18",
    hl.dsp.group.next(),
    { desc = "Next Group Window" }
)

hl.bind("SHIFT + F18",
    hl.dsp.group.prev(),
    { desc = "Last Group Window" }
)

local directions = {"u", "r", "d", "l"}
hl.bind("SUPER + F18",
    function ()
        local window = hl.get_active_window()
        if window == nil then return end
        for _, direction in pairs(directions) do
            if (window.group == nil) then
                hl.dispatch(hl.dsp.window.move({ into_group = direction }))
            end
        end
    end,
    { desc = "Move into Group" }
)

hl.bind("SUPER + SHIFT + F18",
    hl.dsp.window.move({ out_of_group = true }),
    { desc = "Move out of Group" }
)

hl.bind("CTRL + F18",
    hl.dsp.group.lock_active(),
    { desc = "Lock Group" }
)

hl.bind("ALT + F18",
    hl.dsp.group.toggle(),
    { desc = "Create Group" }
)

hl.bind("SHIFT + ALT + F18",
    function ()
        if (hl.get_active_window().group ~= nil) then
            hl.dispatch(hl.dsp.group.toggle())
            return
        end
        hl.dispatch(hl.dsp.group.toggle())
        local workspace = hl.get_active_monitor().active_workspace
        -- local group = workspace:get_groups()[0]
        for _, window in pairs(hl.get_windows({ workspace = workspace })) do
            for _, direction in pairs(directions) do
                if (window.group == nil) then
                    hl.dispatch(hl.dsp.window.move({
                        window = window, into_group = direction
                    }))
                end
            end
        end
    end,
    { desc = "Create Group" }
)


-- Closing windows & misc.
-----------------------------------------------------------
hl.bind("F22",
    hl.dsp.window.close(),
    { desc = "Close Window" }
)

hl.bind("SHIFT + F22",
    hl.dsp.window.kill(),
    { desc = "Kill Window" }
)

hl.bind("SUPER + F22",
    uwsm.dsp("loginctl lock-session"),
    { desc = "Lock" }
)
hl.bind("CTRL + F22",
    uwsm.dsp("systemctl suspend"),
    { desc = "Suspend System" }
)
--hl.bind("ALT + F22")