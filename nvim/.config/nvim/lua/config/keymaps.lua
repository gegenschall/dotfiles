vim.keymap.set("n", "<leader>fgg", function()
  LazyVim.terminal("lazygit", { cwd = LazyVim.root() })
end)

vim.keymap.set("n", "<Enter>", function()
  vim.fn.append(vim.fn.line("."), "")
end)
