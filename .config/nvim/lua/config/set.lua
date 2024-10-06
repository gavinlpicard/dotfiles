-- vim.opt.guicursor = ""

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:ver25"

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showtabline = 2

vim.g.mapleader = " "

vim.opt.list = true
vim.opt.listchars = 'tab:▸\\ ,trail:·'

vim.opt.scrolloff = 8
