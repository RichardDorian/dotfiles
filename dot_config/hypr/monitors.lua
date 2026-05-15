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
  output = "desc:AOC AG276QZD2 2RLR7JA002795",
  mode = "2560x1440@100",
  scale = "1",
  bitdepth = 10,
  vrr = true,
  supports_hdr = true,
  supports_wide_color = true,
  sdr_min_luminance = 0,
  sdr_max_luminance = 250,
  min_luminance = 0,
  max_luminance = 1000,
  max_avg_luminance = 450,
})

-- Fallback configuration for other monitors

hl.monitor({
  output = "",
  mode = "preferred",
  position = "auto",
  scale = "auto"
})
