return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        vue_ls = {
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
        dockerls = {
          settings = {
            docker = {
              languageserver = {
                formatter = {
                  ignoreMultilineInstructions = true,
                },
              },
            },
          },
        },
        tailwindcss = {
          filetypes_include = { "templ" },
        },
        biome = {
          -- TODO: this should fallback to just biome
          cmd = { "./node_modules/.bin/biome", "lsp-proxy" },
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
              tsserver = {
                maxTsServerMemory = 8096,
              },
              suggest = {
                completeFunctionCalls = false,
              },
            },
          },
        },
      },
    },
  },
}
