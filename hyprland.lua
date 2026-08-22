hl.config({
  general = {
    col = {
      active_border = "#add7ff",
      inactive_border = "#252B37",
    },
    gaps_in = 4,
    gaps_out = 8,
    border_size = 2,
  },
  group = {
    col = {
      border_active = "#add7ff",
      border_inactive = "#252B37",
    },
    groupbar = {
      col = {
        active = "#5de4c7",
        inactive = "#252B37",
      },
      text_color = "#e4f0fb",
      text_color_inactive = "#e4f0fb",
    },
  },
  decoration = {
    rounding = 6,
    rounding_power = 2,
    shadow = {
      enabled = true,
      range = 12,
      color = "rgba(00000070)",
    },
  },
})

hl.window_rule({
  opacity = "1.0 override",
  no_dim = true,
  match = {
    class = "^(vesktop|Vesktop)$",
  },
})

hl.window_rule({
  opacity = "1.0 override",
  no_dim = true,
  match = {
    class = "^(code|VSCode|VSCodium)$",
  },
})

hl.window_rule({
  opacity = "1.0 override",
  no_dim = true,
  match = {
    class = "^(chromium|Chromium|google-chrome|Brave|brave-browser)$",
  },
})
