return {
  "folke/noice.nvim",
  opts = function(_, opts)
    -- This safely adds your new rule to the existing table
    table.insert(opts.routes, {
      filter = {
        event = "lsp",
        kind = "progress",
        any = {
          { find = "pyright" },
        },
      },
      opts = { skip = true },
    })
  end,
}
