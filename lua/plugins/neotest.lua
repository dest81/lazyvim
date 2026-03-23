return {
  "nvim-neotest/neotest",
  dependencies = {
    "dest81/neotest-python",
  },
  opts = {
    adapters = {
      ["neotest-python"] = {
        -- python = "venv/bin/python", -- or "python3"

        args = {
          "--reuse-db",
          "--disable-warnings",
          "--cov", -- REQUIRED: tells pytest-cov to run
          "--cov-report=json",
          -- "-c",
          -- "pyproject.toml",
        },
        test_function_patterns = "^(test|it|ensure|must|should)",
        runner = "pytest", -- Ensure pytest is explicitly set
        -- pytest_discover_instances = true,
        is_test_file = function(file_path)
          return file_path:match("_spec%.py$")
            or file_path:match("_specs%.py$")
            or file_path:match("_example%.py$")
            or file_path:match("_examples%.py$")
        end,
      },
    },
  },
}
