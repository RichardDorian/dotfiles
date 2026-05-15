hl.on("hyprland.start", function()
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("systemctl --user start hyprland-session.target")

  hl.exec_cmd("~/.scripts/monitorHotplug.sh")
end)

hl.exec_cmd("~/.scripts/onLidSwitch.sh")
