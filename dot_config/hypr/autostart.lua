hl.on("hyprland.start", function()
  hl.exec_cmd("systemctl --user start hyprland-session.target")

  hl.exec_cmd("spotify", { workspace = "8 silent" })
  hl.exec_cmd("bitwarden-desktop", { workspace = "9 silent" })
end)

hl.on("hyprland.shutdown", function()
  os.execute("systemctl --user stop hyprland-session.target && sleep 0.1")
end)
