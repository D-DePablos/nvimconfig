
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.smartcase = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.linebreak = true
vim.opt.scrolloff = 10
vim.opt.incsearch = true
vim.opt.cmdheight = 2

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.g.mapleader = ' '

-- close tags
vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js,*.tsx,*.vue'


-- set colour scheme
vim.g.tokyonight_style = 'night'
vim.cmd[[colorscheme tokyonight]]

-- highlight on yank
vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank()]]

