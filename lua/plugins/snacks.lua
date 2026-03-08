return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        style = "float", -- Forces the terminal to float
        border = "rounded",
        width = 0.8,
        height = 0.8,
      },
    },
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
