-- Configurations --
-- Specify the user to know what user configurations to choose from
-- Choose the theme you like, or use other ones aswell
User = "terria"
Theme = "onedark"














require("theme."..Theme)
require("plugins-init")
require("dap-config.nvim-dap")
require("lsp-config.language-servers")
require("lsp-config.nvim-cmp-config")

vim.wo.number = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
