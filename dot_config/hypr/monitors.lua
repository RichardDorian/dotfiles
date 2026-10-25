-- Built-in monitor

hl.monitor({
  output = "eDP-1",
  mode = "1920x1200@60",
  position = "-1920x-1200", -- Other monitor can claim 0x0, most of the time the built-in monitor is disabled
  scale = "1"
})

-- School monitors

hl.monitor({
  output = "desc:Dell Inc. DELL P2418D",
  mode = "2560x144060",
  scale = "1"
})

hl.monitor({
  output = "desc:Dell Inc. OptiPlex 7760 0x36419E0A",
  mode = "1920x1080@60",
  scale = "1"
})

hl.monitor({
  output = "desc:HP Inc. HP E24m G4 CNC328194H",
  mode = "1920x1080@60",
  scale = "1"
})

-- Home monitor

hl.monitor({
  output = "desc:AOC AG276QZD2",
  mode = "2560x1440@120",
  position = "0x0",
  scale = 1,
  bitdepth = 10, -- HDMI port can't to 1440p@120Hz with 10bit but Hyprland will do its processing in 10bit which is still better than nothing
  cm = "srgb", -- If using wide (auto = wide because 10bit), hyprland converts srgb to BT.2020 but monitor ignores them because it is not in HDR mode 
  sdr_eotf = "gamma22",
  sdr_min_luminance = 0.005,
  sdr_max_luminance = 200,
  min_luminance = 0,
  max_luminance = 450, -- Certification is at least 400 nits, reviews tell 450 nits
  max_avg_luminance = 250,
  vrr = 0
})

-- Fallback configuration for other monitors

hl.monitor({
  output = "",
  mode = "preferred",
  position = "auto",
  scale = "auto"
})
