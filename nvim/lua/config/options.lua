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

-- WARNING: Might be funky.
-- dynamic indentation
--
vim.api.nvim_create_augroup("FileTypeIndent", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = "python",
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = { "javascript", "lua", "html" },
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
  end,
})
