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
      options = {
        tab_size = 2,
        separator_style = "slant",
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
    },
  },
}
