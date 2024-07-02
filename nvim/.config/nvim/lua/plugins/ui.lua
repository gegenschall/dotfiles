return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    keys = {
      {
        "<leader>fo",
        function()
          require("oil").open(LazyVim.root())
        end,
        desc = "Open Oil (root dir)",
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
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
      },
    },
  },
  {
    "neo-tree.nvim",
    opts = function(_, opts)
      opts.window.mappings = {
        ["O"] = {
          function(state)
            local node = state.tree:get_node()
            require("oil").open(node.path)
          end,
          desc = "open in Oil",
        },
      }
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
