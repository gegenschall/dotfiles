return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        tailwindcss = {
          filetypes_include = { "templ" },
        },
        gopls = {
          settings = {
            gopls = {
              completeFunctionCalls = false,
            },
          },
        },
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
