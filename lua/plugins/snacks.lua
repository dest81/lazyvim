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
          win = {
            list = {
              keys = {
                ["<C-j>"] = { "tmux_down_pane", mode = { "n", "i" } },
              },
            },
          },
          actions = {
            toggle_hidden = { key = "C-h", mode = { "n", "i" } },
            toggle_ignored = { key = "C-i", mode = { "n", "i" } },
            tmux_down_pane = function()
              vim.fn.system("tmux select-pane -D")
            end,
          },
        },
      },
    },
  },
}
