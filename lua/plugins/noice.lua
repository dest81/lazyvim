return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.cmdline = opts.cmdline or {}
    opts.cmdline.format = opts.cmdline.format or {}

    opts.cmdline.format.search_down = { view = "cmdline_popup", icon = "🔍 ", lang = "regex" }
    opts.cmdline.format.search_up = { view = "cmdline_popup", icon = "🔍 ", lang = "regex" }

    -- filter rule that skips Pyright LSP progress noise
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
