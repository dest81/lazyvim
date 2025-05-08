return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      htmldjango = { "djlint" },
      html = { "djlint" },
    },
    formatters = {
      djlint = {
        command = "djlint",
        args = {
          "--reformat",
          "--indent",
          "2",
          "--max-attribute-length",
          "1000",
          "--profile",
          "django",
          "--preserve-blank-lines",
          "-",
        },
        stdin = true,
      },
    },
  },
}
