local transform = function ()
    local handle = io.popen("busctl get-property net.hadess.SensorProxy /net/hadess/SensorProxy net.hadess.SensorProxy AccelerometerOrientation")
    if not handle then return 0 end
    local result = handle:read("*a")
    handle:close()
    if result == 0 or result == "" then return 0 end

    if string.find(result, "normal", 1, true) then
        return 0
    elseif string.find(result, "bottom-up", 1, true) then
        return 2
    end
end

-- Main Monitor
hl.monitor({
    output = "eDP-1",
    mode = "highrr",
    transform = transform()
})

hl.workspace_rule({ workspace = "1",  persistent = true,    default = true })
hl.workspace_rule({ workspace = "2",  persistent = true })
hl.workspace_rule({ workspace = "name:game" })
hl.workspace_rule({ workspace = "3",  persistent = true,    default = true })
hl.workspace_rule({ workspace = "4",  persistent = true })
hl.workspace_rule({ workspace = "5",  persistent = true,    default = true })
hl.workspace_rule({ workspace = "6",  persistent = true })

hl.timer(function()
    hl.monitor({
        output = "eDP-1",
        transform = transform()
    })
end, { timeout = 750, type = "repeat" }):set_enabled(true)
