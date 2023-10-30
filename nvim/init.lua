vim.g.mapleader = ' '

vim.scriptencoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.cursorline = true
vim.opt.number = true
vim.wo.number = true
vim.wo.relativenumber = false
vim.opt.mouse = 'a'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 2
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true 
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = true 

vim.opt.updatetime = 300
vim.opt.showtabline = 2
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'

-- swapfile not created
vim.opt.swapfile = false
vim.opt.wrap = true

vim.opt.winblend = 5


-- lazy
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'antoinemadec/FixCursorHold.nvim',
  'nvim-lua/plenary.nvim',
  'folke/lsp-colors.nvim',
  'nvim-tree/nvim-web-devicons',

  {'neoclide/coc.nvim', branch = 'release'},
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },


  {'nvim-lualine/lualine.nvim'},

  {'romgrk/barbar.nvim',dependencies = { 'nvim-web-devicons' }},

  {'lambdalisue/fern.vim',lazy = false, priority = 1000 }, 
  'lambdalisue/glyph-palette.vim',
  {'TheLeoP/fern-renderer-web-devicons.nvim',dependencies = {'nvim-web-devicons'}},

  --Syntax Highlight
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'JoosepAlviste/nvim-ts-context-commentstring'},

  {'nvim-telescope/telescope.nvim' },
  {'fannheyward/telescope-coc.nvim'},
  {
   "nvim-telescope/telescope-frecency.nvim",
   dependencies = {"kkharji/sqlite.lua"}
  },

})

-- tokyonight
vim.cmd[[colorscheme tokyonight]]


