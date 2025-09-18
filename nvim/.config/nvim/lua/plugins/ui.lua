return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      smear_between_neighbor_lines = false,
    },
  },
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
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      keymaps = {
        ["<m-h>"] = { "actions.toggle_hidden", mode = "n" },
      },
    },
    dependencies = {
      { "nvim-mini/mini.icons", opts = {} },
    },
    lazy = false,
    keys = {
      { "<leader>fo", "<cmd>Oil<cr>", desc = "Open oil.nvim" },
    },
  },
}
