vim.diagnostic.config({
  update_in_insert = true,
  virtual_lines = false,
  virtual_text = true,
})

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4

vim.o.clipboard = "unnamedplus"

vim.o.number = true
vim.o.relativenumber = true
vim.cmd.colorscheme("kanagawa-wave")
vim.cmd("highlight LineNr guibg=none")

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.showtabline = 2

vim.o.splitright = true
