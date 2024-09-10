local tmux_group = vim.api.nvim_create_augroup("tmux", { clear = true })

vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost", "BufNewFile", "FocusGained" }, {
  group = tmux_group,
  desc = "Rename tmux window",
  callback = function()
    if vim.fn.exists("$TMUX") then
      vim.fn.system("tmux rename-window ", vim.fn.expand("%:t"))
    end
  end,
})

vim.api.nvim_create_autocmd({ "VimLeave", "FocusLost" }, {
  group = tmux_group,
  desc = "Remove tmux window renaming",
  callback = function()
    if vim.fn.exists("$TMUX") then
      vim.fn.system("tmux set-window-option automatic-rename")
    end
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  -- group = augroup("json_conceal"),
  pattern = { "json", "jsonc", "json5" },
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})
