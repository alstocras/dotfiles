return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          -- Prevent Mason from managing clangd and use the system binary instead
          mason = false, 
        },
      },
    },
  },
}
