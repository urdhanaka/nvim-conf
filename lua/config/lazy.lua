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
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = true,
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    config = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },
  {
    "nvim-lua/plenary.nvim"
  },
  {
    "theprimeagen/harpoon",
    lazy = true,
  },
  {
    "tpope/vim-fugitive",
    lazy = true,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = true,
  },
  -- LSP Thingies
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true
  },
  { 'neovim/nvim-lspconfig' },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },

  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-nvim-lua' },
  {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
  },

  -- Indentline
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    lazy = true,
  },

  -- gitsigns
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup({
        current_line_blame = true,
        current_line_blame_formatter = '<author> (<author_mail>), <author_time:%Y-%m-%d> - <summary>',
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    lazy = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    branch = '0.1.x',
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    'echasnovski/mini.pairs',
    version = false
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
  },
  {
    'RRethy/vim-illuminate',
    lazy = false,
  },
})
