return {
  {
    "Wansmer/treesj",
    keys = { "<leader>gjm", "<leader>gjj", "<leader>gjs" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup()
    end,
  },
}
