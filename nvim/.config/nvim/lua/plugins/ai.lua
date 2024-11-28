return {
  {
    "frankroeder/parrot.nvim",
    dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ac", "<cmd>PrtImplement<cr>", mode = { "v" }, desc = "Ask Parrot to implement" },
    },
    opts = {
      providers = {
        openai = {
          api_key = os.getenv("OPENAI_API_KEY"),
        },
      },
    },
  },
}
