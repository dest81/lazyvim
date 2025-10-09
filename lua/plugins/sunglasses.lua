return {
  "miversen33/sunglasses.nvim",
  config = true,
  opts = {
    filter_type = "NOSYNTAX",
    filter_percent = 0.45,
    refresh_timer = 5, -- Auto refresh interval in seconds
    excluded_filetypes = {
      "neo-tree",
      "dashboard",
      "lazy",
      "TelescopePrompt",
      "neo-tree",
      "NvimTree",
      "alpha",
      "toggleterm",
      "notify",
      "noice", -- etc.
    },
    excluded_highlights = {
      "WinSeparator",
      { "lualine_.*", glob = true },
    },
  },
}
