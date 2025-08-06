return {
  -- {
  --   "harrisoncramer/gitlab.nvim",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "sindrets/diffview.nvim",
  --     -- "stevearc/dressing.nvim", -- Recommended but not required. Better UI for pickers.
  --     "nvim-tree/nvim-web-devicons", -- Recommended but not required. Icons in discussion tree.
  --   },
  --   build = function()
  --     require("gitlab.server").build(true)
  --   end, -- Builds the Go binary
  --   config = function()
  --     require("gitlab").setup()
  --   end,
  -- },
  {
    "vuciv/golf",
    keys = {
      { "<leader>Gt", "<cmd>Golf today<cr>", desc = "Golf (today's puzzle)" },
      { "<leader>Ge", "<cmd>Golf easy<cr>", desc = "Golf (easy)" },
      { "<leader>Gm", "<cmd>Golf medium<cr>", desc = "Golf (medium)" },
      { "<leader>Gh", "<cmd>Golf hard<cr>", desc = "Golf (hard)" },
    },
  },
}
