vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.clipboard = "unnamed"
vim.opt.encoding = "utf-8"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.showmode = false
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100"

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    command = "syntax on"
})

