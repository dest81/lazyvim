return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Oil",
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open Parent Directory" },
      { "<leader>fo", "<cmd>Oil --float<cr>", desc = "Oil Float" },
    },
    opts = {
      -- This configures the appearance of the floating window
      float = {
        padding = 2,
        max_width = 0.8, -- 80% of screen width (matches Snacks)
        max_height = 0.8, -- 80% of screen height
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
      -- Keymaps inside the Oil buffer
      keymaps = {
        ["q"] = "actions.close", -- Quick exit like terminal
        ["<ESC>"] = "actions.close",
      },
      default_file_explorer = false,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
    },
  },
}
