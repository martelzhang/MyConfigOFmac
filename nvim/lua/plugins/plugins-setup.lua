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


local plugins = {
  "folke/tokyonight.nvim",           -- 主题
  "nvim-lualine/lualine.nvim",       -- 状态栏
  "nvim-tree/nvim-tree.lua",         -- 文档树
  "nvim-tree/nvim-web-devicons",     -- 文档树图标

  "nvim-treesitter/nvim-treesitter", -- 语法高亮
  "p00f/nvim-ts-rainbow",            -- 配合treesitter，不同括号颜色区分

{
    "ggandor/leap.nvim",
    lazy = true,
    keys = { "r", "R", "W", "dr", "dR", "yr", "yR", "cr", "cR" },
    config = function()
        require("leap").opts.highlight_unlabeled_phase_one_targets = true
        -- leap.add_default_mappings()
        vim.keymap.set({ "x", "o", "n" }, "r", "<Plug>(leap-forward-to)")
        vim.keymap.set({ "x", "o", "n" }, "R", "<Plug>(leap-backward-to)")
        vim.keymap.set({ "x", "o", "n" }, "W", "<Plug>(leap-from-window)")
    end,
},


  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  },

  -- 自动补全
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "hrsh7th/cmp-path",      -- 文件路径

  "numToStr/Comment.nvim", -- gcc和gc注释
  "windwp/nvim-autopairs", -- 自动补全括号


  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
  "lewis6991/gitsigns.nvim", -- 左则git提示

  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },


  -- {
  --   "christoomey/vim-tmux-navigator",
  --   cmd = {
  --     "TmuxNavigateLeft",
  --     "TmuxNavigateDown",
  --     "TmuxNavigateUp",
  --     "TmuxNavigateRight",
  --   },
  --   keys = {
  --     { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
  --     { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
  --     { "<c-q>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
  --     { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
  --   },
  -- },

-- {
--     "aserowy/tmux.nvim",
--     config = function() return require("tmux").setup() end
-- },

{
  "smjonas/inc-rename.nvim",
  config = function()
    require("inc_rename").setup()
  end,
},



  { 'akinsho/toggleterm.nvim', version = "*", config = true },

  {
    'nvimdev/dashboard-nvim',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },

  -- {
  --   "folke/which-key.nvim",
  --   event = "VeryLazy",
  --   init = function()
  --     vim.o.timeout = true
  --     vim.o.timeoutlen = 300
  --   end,
  --   opts = {
  --     {
  --       mode = "n", -- NORMAL mode
  --       -- prefix: use "<leader>f" for example for mapping everything related to finding files
  --       -- the prefix is prepended to every mapping part of `mappings`
  --       prefix = "",
  --       buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  --       silent = true,  -- use `silent` when creating keymaps
  --       noremap = true, -- use `noremap` when creating keymaps
  --       nowait = false, -- use `nowait` when creating keymaps
  --       expr = false,   -- use `expr` when creating keymaps
  --     }                 -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --   }
  -- }




}
local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)
