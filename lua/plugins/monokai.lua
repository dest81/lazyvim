return {
  {
    "tanvirtin/monokai.nvim",
    lazy = false, -- load on startup
    priority = 1000, -- make sure it loads before others
    config = function()
      vim.cmd([[colorscheme monokai]])
    end,
  },
}
-- return {
--   "loctvl842/monokai-pro.nvim",
--   config = function()
--     -- Set the colorscheme to Monokai
--     -- vim.cmd("colorscheme monokai")
--   end,
-- }
