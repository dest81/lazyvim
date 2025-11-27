return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true,
      sources = {
        files = {
          hidden = true, -- Show hidden/dotfiles
          ignored = false, -- Respect .gitignore
        },
        explorer = {
          layout = {
            preview = "main", -- set preview layout to "main"
          },
          actions = {
            toggle_hidden = { key = "C-h", mode = { "n", "i" } },
            toggle_ignored = { key = "C-i", mode = { "n", "i" } },
          },
        },
      },
    },
  },
}
