local uwsm = require("hyprland.namespace.uwsm")

hl.bind("XF86AudioRaiseVolume",
    uwsm.dsp("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2.5%+"), {
        desc = "Raise Volume",
        locked = true
    }
)

hl.bind("XF86AudioLowerVolume",
    uwsm.dsp("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2.5%-"), {
        desc = "Lower Volume",
        locked = true
    }
)

hl.bind("XF86AudioMute",
    uwsm.dsp("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {
        desc = "Toggle Mute",
        locked = true
    }
)

hl.bind("SHIFT + XF86AudioMute",
    uwsm.dsp("pactl set-default-sink $(pactl list sinks short | awk '/SUSPENDED$/ {print $1}')"), {
        desc = "",
        locked = true
    }
)

hl.bind("XF86AudioPlay",
    uwsm.dsp("playerctl play-pause"), {
        desc = "Play/Pause",
        locked = true
    }
)

hl.bind("SHIFT + XF86AudioPlay",
    uwsm.dsp("playerctld shift || playerctld daemon"), {
        desc = "",
        locked = true
    }
)

hl.bind("XF86AudioPrev",
    uwsm.dsp("playerctl previous"), {
        desc = "Previous Track",
        locked = true
    }
)

hl.bind("SHIFT + XF86AudioPrev",
    uwsm.dsp("playerctl position 15-"), {
        desc = "Seek Back 15s",
        locked = true
    }
)

hl.bind("XF86AudioNext",
    uwsm.dsp("playerctl next"), {
        desc = "Next Track",
        locked = true
    }
)

hl.bind("SHIFT + XF86AudioNext",
    uwsm.dsp("playerctl position 15+"), {
        desc = "Seek Forward 15s",
        locked = true
    }
)

hl.bind("XF86MonBrightnessDown",
    uwsm.dsp("playerctl volume 0.05-"), {
        desc = "",
        locked = true
    }
)

hl.bind("XF86MonBrightnessUp",
    uwsm.dsp("playerctl volume 0.05+"), {
        desc = "",
        locked = true
    }
)
