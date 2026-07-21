-- Main Monitor
hl.monitor({
    output = "DP-1",
    mode = "highrr",
    position = "0x0",
})

-- Vertical Monitor
hl.monitor({
    output = "DP-2",
    mode = "highrr",
    position = "2560x-420",
    transform = 3
})

-- Secondary Monitor
hl.monitor({
    output = "HDMI-A-1",
    mode = "preferred",
    position = "-1920x0"
})

hl.workspace_rule({ workspace = "1", monitor = "DP-1",      persistent = true,  default = true, })
hl.workspace_rule({ workspace = "2", monitor = "DP-1",      persistent = true, })
hl.workspace_rule({ workspace = "3", monitor = "DP-2",      persistent = true,  default = true,     layout_opts = { orientation = "top", }, })
hl.workspace_rule({ workspace = "4", monitor = "DP-2",      persistent = true,                      layout_opts = { orientation = "top", }, })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1",  persistent = true,  default = true, })
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1",  persistent = true, })
hl.workspace_rule({ workspace = "special:game", monitor = "DP-1" })
