-- https://github.com/LazyVim/LazyVim/discussions/5730
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- hidden = true,
      win = {
        input = {
          keys = {
            ["<C-h>"] = { "toggle_hidden", mode = { "i", "n" } },
            ["<C-i>"] = { "toggle_ignored", mode = { "i", "n" } },
          },
        },
      },
      sources = {
        explorer = {
          -- ignored = true,
          -- hidden = true,
        },
      },
    },
  },
}
