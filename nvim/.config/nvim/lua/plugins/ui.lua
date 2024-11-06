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
      options = {
        tab_size = 2,
        separator_style = "slant",
      },
    },
  },
  {
    "neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem.filtered_items = {
        visible = true,
        never_show = {
          ".DS_Store",
          "thumbs.db",
          "node_modules",
          ".git",
        },
      }
    end,
  },
  {
    "s1n7ax/nvim-window-picker",
    -- name = 'window-picker',
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        hint = "floating-big-letter",
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_z = nil
    end,
  },
}
