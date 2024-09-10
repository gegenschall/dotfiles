vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
vim.opt.conceallevel = 2

-- vim.g.root_spec = { "pnpm-workspace.yaml", "lsp", { ".git", "lua" }, "cwd" }
vim.g.node_host_prog = vim.fn.system("volta which neovim-node-host | tr -d '\n'")
