return {
  {
    "andythigpen/nvim-coverage",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "Coverage", "CoverageSummary", "CoverageLoad" },
    keys = {
      { "<leader>tcc", "<cmd>Coverage<cr>", desc = "Activate Coverage" },
      { "<leader>tct", "<cmd>CoverageToggle<cr>", desc = "Toggle Coverage" },
      { "<leader>tcs", "<cmd>CoverageSummary<cr>", desc = "Coverage Summary" },
    },
    opts = {
      auto_reload = true,
      lang = {
        python = {
          coverage_file = ".coverage", -- Default file name
          coverage_command = "coverage json -q -o -", -- Outputs JSON to stdout
        },
      },
    },
  },
}
