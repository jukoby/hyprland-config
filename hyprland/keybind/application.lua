local uwsm = require("hyprland.namespace.uwsm")

local browser = "zen-browser"
local terminal = "alacritty"
local file_manager = "thunar"
local fp = "flatpak run "

hl.bind("SUPER + SUPER_L",  uwsm.dsp("walker"),     { desc = "Walker" })

hl.bind("F19",              uwsm.dsp(browser),                                  { desc = "Browser" })
hl.bind("SHIFT + F19",      uwsm.dsp(""),                                       { desc = "Kalender" }) -- TODO
hl.bind("SUPER + F19",      uwsm.dsp(""),                                       { desc = "Whatsapp" }) -- TODO
hl.bind("CTRL + F19",       uwsm.dsp("signal.desktop"),                         { desc = "Signal" })
hl.bind("ALT + F19",        uwsm.dsp(browser .. " https://github.com"),         { desc = "Github" })

hl.bind("F20",              uwsm.dsp("codium.desktop"),                         { desc = "VSCode" })
hl.bind("SHIFT + F20",      uwsm.dsp(file_manager),                             { desc = "File Manager" })
hl.bind("SUPER + F20",      uwsm.dsp(fp .. "com.github.xournalpp.xournalpp"),   { desc = "Xournal++" })
-- hl.bind("CTRL + F20")
-- hl.bind("ALT + F20")

hl.bind("F21",              uwsm.dsp(terminal),                 { desc = "Terminal" })
hl.bind("SHIFT + F21",      uwsm.dsp(""),                       { desc = "SSH" })     -- TODO
hl.bind("SUPER + F21",      uwsm.dsp(terminal .. " -e yay"),    { desc = "yay" })
hl.bind("CTRL + F21",       uwsm.dsp("btop.desktop"),           { desc = "Btop" })
hl.bind("ALT + F21",        uwsm.dsp("via-nativia.desktop"),    { desc = "Via" })

--hl.bind("F23")
--hl.bind("SHIFT + F23")
--hl.bind("SUPER + F23")
--hl.bind("CTRL + F23")
--hl.bind("ALT + F23")

hl.bind("F24",              uwsm.dsp(fp .. "com.spotify.Client"),       { desc = "Spotify" })
hl.bind("SHIFT + F24",      uwsm.dsp("blueman-manager.desktop"),        { desc = "Bluetooth" })
hl.bind("SUPER + F24",      uwsm.dsp("steam.desktop"),                  { desc = "Steam" })
--hl.bind("CTRL + F24")
hl.bind("ALT + F24",        uwsm.dsp("$scripts/sunshine-setup.sh"),     { desc = "Sunshine Setup" })

-- Discord
-----------------------------------------------------------
hl.bind("F14",
    hl.dsp.send_shortcut({
        mods = "Ctrl+Shift", key = "M",
        window = "class:com.discordapp.Discord"
    }),
    { desc = "Discord Mute" }
)

hl.bind("SHIFT + F14",
    hl.dsp.send_shortcut({
        mods = "Ctrl+Shift", key = "D",
        window = "class:com.discordapp.Discord"
    }),
    { desc = "Discord Silent" }
)

hl.bind("SUPER + F14",
    uwsm.dsp(fp .. "com.discordapp.Discord"),
    { desc = "Discord" }
)
-- hl.bind("CTRL + F14",)
-- hl.bind("ALT + F14",)


hl.bind("CTRL + ALT + P",           uwsm.dsp(""),                   { desc = "Sunshine Setup" }) -- TODO
hl.bind("CTRL + ALT + R",           uwsm.dsp("hyprctl reload"),     { desc = "Reload Hyprland" })
