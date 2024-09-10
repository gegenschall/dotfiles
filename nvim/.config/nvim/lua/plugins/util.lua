return {
  {
    "pwntester/octo.nvim",
    opts = {
      default_merge_method = "commit",
    },
    keys = {
      { "<leader>gi", false },
      { "<leader>gI", false },
      { "<leader>gC", "<cmd>Octo pr create<CR>", desc = "Create PR (Octo)" },
    },
  },
}
