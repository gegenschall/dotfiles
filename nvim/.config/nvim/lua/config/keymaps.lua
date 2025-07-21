vim.keymap.set("n", "<leader>fgg", function()
  LazyVim.terminal("lazygit", { cwd = LazyVim.root() })
end)

vim.keymap.set("n", "<leader>cL", "<cmd>LspRestart<cr>")

vim.keymap.set("n", "<S-Enter>", function()
  vim.fn.append(vim.fn.line("."), "")
end, { buffer = true })
