return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        vtsls = {
          settings = {
            typescript = {
              preferences = {
                importModuleSpecifier = "relative",
                importModuleSpecifierEnding = "minimal",
              },
              suggest = {
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
                completeFunctionCalls = false,
              },
            },
          },
        },
      },
    },
  },
}
