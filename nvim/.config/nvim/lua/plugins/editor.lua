return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        -- exclude = {
        --   "apis/",
        -- },
        formatters = {
          file = {
            filename_first = true,
            truncate = 100,
          },
        },
      },
    },
  },
  {
    "hedyhli/markdown-toc.nvim",
    ft = "markdown",
    cmd = { "Mtoc" },
    opts = {
      headings = {
        before_toc = true,
      },
    },
  },
  {
    "johmsalas/text-case.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("textcase").setup({})
      require("telescope").load_extension("textcase")
    end,
    keys = {
      "ga", -- Default invocation prefix
    },
    cmd = {
      "Subs",
      "TextCaseOpenTelescope",
      "TextCaseOpenTelescopeQuickChange",
      "TextCaseOpenTelescopeLSPChange",
      "TextCaseStartReplacingCommand",
    },
    lazy = false,
  },
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      use_default_keymaps = false,
    },
    keys = {
      { "<leader>cJ", "<cmd>TSJToggle <cr>", desc = "Toggle Join (TreeSJ)" },
    },
    lazy = true,
  },
  {
    "hedyhli/outline.nvim",
    opts = {
      keymaps = {
        close = "q",
        hover_symbol = "K",
        toggle_preview = "P",
        fold_toggle = "C",
      },
    },
  },
}
