local tmux_group = vim.api.nvim_create_augroup("tmux", { clear = true })

vim.api.nvim_create_autocmd({ "FileType" }, {
  -- group = augroup("json_conceal"),
  pattern = { "json", "jsonc", "json5" },
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})
