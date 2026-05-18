local uwsm = require("hyprland.namespace.uwsm")
local user_dirs = require("hyprland.namespace.user-dirs")

local file_manager = "thunar"

hl.bind("F13",
    uwsm.dsp("hyprshot -m region --freeze --clipboard-only"),
    { desc = "Snipping Tool" }
)

hl.bind("SHIFT + F13",
    uwsm.dsp("hyprshot -m active -m output"),
    { desc = "Screenshot" }
)

hl.bind("SUPER + F13",
    uwsm.dsp("gsr-ui-cli replay-save"),
    { desc = "Save Clip" }
)

hl.bind("CTRL + F13",
    uwsm.dsp("gsr-ui-cli toggle-show"),
    { desc = "Show GSR UI" }
)

hl.bind("ALT + F13",
uwsm.dsp(file_manager .. " " .. user_dirs.VIDEOS .. "/clips/"),
    { desc = "Open Clip Folder" }
)

hl.bind("ALT + SHIFT + F13",
    uwsm.dsp(file_manager .. " " .. user_dirs.PICTURES .. "/screenshots/"),
    { desc = "Open Screenshot Folder" }
)