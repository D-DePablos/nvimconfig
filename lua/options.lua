vim.opt.relativenumber = true
vim.opt.cursorline = true -- show the cursor line
vim.opt.hidden = true
vim.opt.cursorcolumn = true -- show the cursor column
vim.opt.mouse = "a" -- enable mouse
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.smartcase = true -- ignores case for search unless a capital is used in search
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true -- spaces instead of tabs
vim.opt.number = true
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.linebreak = true
vim.opt.scrolloff = 10
vim.opt.incsearch = true
vim.opt.cmdheight = 2
vim.opt.showmode = false
vim.opt.numberwidth = 5 -- wider gutter
vim.opt.linebreak = true -- don't break words on wrap
vim.opt.spelllang = "en"
vim.opt.smartindent = true
vim.opt.completeopt = "menuone,noselect" -- nvim-compe
vim.opt.signcolumn = "yes" -- always show the signcolumn
vim.opt.termguicolors = true
-- vim.opt.title = true
-- spelling
-- vim.opt.spell = true
vim.opt.spelllang = "en_gb"
vim.opt.mousemodel = "popup"
-- timeout for whichkey
vim.opt.timeoutlen = 500

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.g.mapleader = " "

-- close tags
vim.g.closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js,*.tsx,*.vue"

-- set colour scheme
vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
vim.g.tokyonight_transparent = true
vim.g.tokyonight_dark_sidebar = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}
vim.cmd [[colorscheme tokyonight]]

-- highlight on yank
vim.cmd [[au TextYankPost * silent! lua vim.highlight.on_yank()]]

-- Vertically center document when entering insert mode
vim.cmd [[autocmd InsertEnter * norm zz]]

-- vim-matchtag
vim.g.vim_matchtag_enable_by_default = 1
vim.g.vim_matchtag_files = "*.html,*.xml,*.js,*.jsx,*.vue,*.svelte,*.jsp,*.tsx"
vim.g.vim_matchtag_highlight_cursor_on = 1
