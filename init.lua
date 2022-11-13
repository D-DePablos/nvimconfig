vim.opt = {
	mouse ='a',
	mouse =nicr,
	ignorecase=true,
	smartcase=true,
	wrap=true,
	breakindent=true,
	tabstop=4,
	softtabstop=4,
	shiftwidth=4,
	expandtab=false,
	termguicolors = true,
	spell=true,
	guicursor="",
	errorbells=false,
	nu=true,
	relativenumber=true,
	number=true,
	smartindent=true,
	swapfile=false,
	backup=false,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile=true,
	hlsearch=false,
	incsearch=true,
	scrolloff=8,
	signcolumn="yes",
	cmdheight=1,
	updatetime=50,
	colorcolumn="80",
}

vim.g = {
	mapleader = " ",
	transparent_enabled = true,
	netrw_browse_split = 0,
	netrw_banner = 0,
	netrw_winsize = 25,
}

-- Keymaps
vim.keymap.set('n', ';', ':', {desc = 'Colon in Semicolon'})
vim.keymap.set('n', ';;', ';', {desc = 'Colon in Semicolon'})

-- Packer stuff
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'xiyaowong/nvim-transparent'

  -- Plenary and dependencies
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'


  -- True is false
  use 'andrewradev/switch.vim'

  -- Tutorial
  use 'ThePrimeagen/vim-be-good'

  -- Sandwich-like
  use 'tpope/vim-surround'
  use 'machakann/vim-sandwich'

  -- Statusline -> Config to evil
  use 'nvim-lualine/lualine.nvim'

  -- Tags for Functions and Objects
  use 'preservim/tagbar'

  -- Git stuff
  use 'lewis6991/gitsigns.nvim'
  use 'petertriho/nvim-scrollbar'
  use 'TimUntersberger/neogit'

  if install_plugins then
    require('packer').sync()
  end
end)


vim.cmd('colorscheme tokyonight')

