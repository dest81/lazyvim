return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    keywords = {
      XXX = {
        icon = " ",
        color = "error",
        alt = { "FIXME", "HACK" },
      },
    },
    -- highlight = {
    --   -- allow matching keywords without a colon
    --   pattern = [[\b(KEYWORDS)\b]],
    -- },
    -- search = {
    --   pattern = [[\b(KEYWORDS)\b]],
    -- },
  },
}
