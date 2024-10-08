return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 5000 },
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                fieldalignment = false,
              },
            },
          },
        },
      },
    },
  },
}
