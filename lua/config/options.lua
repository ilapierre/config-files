vim.opt.wrap = false -- disable text wrapping

-- line number
vim.opt.number = true
vim.opt.relativenumber = true

-- clipboard
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

-- enable built-in indent scripts
vim.cmd("filetype plugin indent on")

-- tabline
vim.opt.showtabline = 1
