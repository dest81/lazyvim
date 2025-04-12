return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          -- mason = false,
          -- autostart = false,
          settings = {
            python = {
              analysis = {
                -- autoSearchPaths = true,
                -- diagnosticMode = "openFilesOnly",
                -- useLibraryCodeForTypes = true,
                typeCheckingMode = "off",
              },
            },
          },
        },
      },
    },
  },
}
