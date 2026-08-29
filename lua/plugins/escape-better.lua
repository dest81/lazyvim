return {
  "max397574/better-escape.nvim",
  event = "InsertEnter", -- Only load the plugin when you actually start typing
  config = function()
    require("better_escape").setup({
      timeout = 200, -- The millisecond window you have to type the second key
      default_mappings = false, -- Disable global defaults so we can specify 'jk'
      mappings = {
        i = { -- 'i' stands for Insert Mode
          j = {
            j = "<Esc>", -- Map 'jk' to cleanly exit to Normal Mode
          },
        },
      },
    })
  end,
}
