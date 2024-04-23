-- variables
local opt = vim.opt

-- leader key
vim.g.mapleader = " "

-- editor
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set scrolloff=8")
opt.autoindent = true
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set foldmethod=indent")
vim.opt.foldlevelstart = 99
opt.cursorline = true
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- search
opt.ignorecase = true
opt.smartcase = true
