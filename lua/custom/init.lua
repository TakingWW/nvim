vim.opt.cmdheight = 1
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.cmd([[
    hi inserte guibg='#D0F5BE'
    hi normale guibg='#F1D4E5'
    hi visuale guibg='#E57C23'
    set guicursor=n:block-normale,i:block-inserte,v:block-visuale
]])
