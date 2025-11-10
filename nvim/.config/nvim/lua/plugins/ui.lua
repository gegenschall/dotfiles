return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
        bottom_search = false,
        inc_rename = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      dim_inactive = true,
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      highlights = {
        fill = {
          bg = "none",
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_z = nil
    end,
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          {
            section = "terminal",
            cmd = "chafa ~/.config/nvim/neovim-mark.svg --probe off --format symbols --size 30x30; sleep .1",
            height = 30,
            padding = 1,
            align = "center",
          },
          {
            pane = 2,
            { section = "keys", gap = 1, padding = 1 },
            { section = "startup" },
          },
        },
      },
      scroll = { enabled = false },
      indent = {
        animate = { enabled = false },
      },
      picker = {
        sources = {
          explorer = {
            layout = {
              preview = "main",
            },
          },
        },
      },
    },
  },
}
