-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

-- vim.g.root_spec = { "pnpm-workspace.yaml", "lsp", { ".git", "lua" }, "cwd" }
vim.g.node_host_prog = vim.fn.system("volta which neovim-node-host | tr -d '\n'")

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
