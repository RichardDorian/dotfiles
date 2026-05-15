hl.bind("SUPER + code:53", hl.dsp.exec_cmd("kitty"))                                                  -- X
hl.bind("SUPER + code:24", hl.dsp.window.close())                                                     -- Q
hl.bind("SUPER + code:26", hl.dsp.exec_cmd("nautilus"))                                               -- E
hl.bind("SUPER + code:55", hl.dsp.window.float())                                                     -- V
hl.bind("SUPER + code:41", hl.dsp.window.fullscreen({ mode = "maximized" }))                          -- F
hl.bind("SUPER + code:46", hl.dsp.exec_cmd("hyprlock"))                                               -- L
hl.bind("SUPER + code:54", hl.dsp.exec_cmd("google-chrome-stable"))                                   -- C
hl.bind("SUPER + code:33", hl.dsp.exec_cmd("hyprpicker"))                                             -- P
hl.bind("SUPER + code:43", hl.dsp.exec_cmd("vicinae vicinae://extensions/vicinae/clipboard/history")) -- H

local screenshot = hl.dsp.exec_cmd("hyprshot -o ~/Pictures/Screenshots -m region")
hl.bind("PRINT", screenshot)
hl.bind("XF86Display", screenshot)

hl.bind("ALT + SPACE", hl.dsp.exec_cmd("vicinae toggle"))

-- Workspaces
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind("SUPER + code:" .. (9 + key), hl.dsp.focus({ workspace = i }))
  hl.bind("SUPER + SHIFT + code:" .. (9 + key), hl.dsp.window.move({ workspace = i }))
end

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2.5%+"),
  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2.5%-"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("~/.scripts/laptopAudioMute.sh"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("~/.scripts/laptopMicMute.sh"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Media keys
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Toggles the built-in display if the lid is closed/opened
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("~/.scripts/onLidSwitch.sh closed"), { locked = true })
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("~/.scripts/onLidSwitch.sh open"), { locked = true })
