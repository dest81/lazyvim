return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-python",
  },
  opts = {
    adapters = {
      ["neotest-python"] = {
        -- python = ".venv/bin/python", -- or "python3"

        args = {
          "--reuse-db",
          "--disable-warnings",
        },
      },
    },
  },
}
