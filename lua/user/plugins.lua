-- My Plugins
lvim.plugins = {
  -- Themes
  {"Matsuuu/pinkmare"},
  {"Mofiqul/dracula.nvim"},
  {"arzg/vim-colors-xcode"},
  {"bkegley/gloombuddy"},
  {"elianiva/gitgud.nvim"},
  {"embark-theme/vim"},
  {"folke/tokyonight.nvim"},
  {"mangeshrex/uwu.vim"},
  {"mhartington/oceanic-next"},
  {"projekt0n/github-nvim-theme"},
  {"rose-pine/neovim"},
  {"shaunsingh/moonlight.nvim"},
  {"wadackel/vim-dogrun"},
  {"wuelnerdotexe/vim-enfocado"},
  {"yonlu/omni.vim"},
  {"vv9k/vim-github-dark"},
  {"bluz71/vim-nightfly-guicolors"},
  {"yashguptaz/calvera-dark.nvim"},
  -- {
  --   'frenzyexists/aquarium-vim',
  --   branch = 'vimscript_version'
  -- },

  -- Frontend
  {"mhartington/formatter.nvim"},
  {
    "fsouza/prettierd",
    config = function()
      require("user.formatter").config()
    end
  },

  -- Editing
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   config = function()
  --     require("user.null-ls").setup()
  --   end
  -- },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("user.ts-context").config()
    end
  },
  {"mg979/vim-visual-multi"},
  {
    "glepnir/lspsaga.nvim"},
    config = function()
      require("user.saga").config()
    end
  ,
  {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
      }
    end
  },

  -- LSP
  {"RishabhRD/popfix"},
  {"RishabhRD/nvim-lsputils"},
  {"stevearc/aerial.nvim"},

  -- Productivity
  {"kosayoda/nvim-lightbulb"},
  -- {
  --   "sidebar-nvim/sidebar.nvim",
  --   rocks = {'luatz'},
  --   config = function()
  --     require("user.sidebar").config()
  --   end
  -- },
  {"MunifTanjim/nui.nvim"},
  {"voldikss/vim-floaterm"},
  {"ellisonleao/glow.nvim"},
  {"felipec/vim-sanegx"},
  {
    "folke/zen-mode.nvim",
    config = function()
      require("user.zen").config()
    end,
  },
  {"f-person/git-blame.nvim"},

  -- Linting
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    cmd = "TroubleToggle",
  },

  -- Others
  {
    'yamatsum/nvim-nonicons',
    requires = {'kyazdani42/nvim-web-devicons'}
  },
  {"dinhhuy258/vim-local-history"},
  {"flrnd/candid.vim"},
  {"jose-elias-alvarez/nvim-lsp-ts-utils"},
  {"nvim-treesitter/nvim-treesitter-textobjects"},
  {"nvim-treesitter/playground"},
  {"onsails/lspkind-nvim"},
  {"p00f/nvim-ts-rainbow"},
  {"srcery-colors/srcery-vim"},
  {"tjdevries/colorbuddy.vim"},
  {
    "simrat39/symbols-outline.nvim",
    -- cmd = "SymbolsOutline",
    config = function()
      require("user.outline").config()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },
  {
    "vuki656/package-info.nvim",
    config = function()
      require "user.package-info"
    end,
    ft = "json",
    requires = "MunifTanjim/nui.nvim",
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("user.neoscroll").config()
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("user.spectre").config()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("user.colorizer").config()
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("user.numb").config()
    end,
  },
}

-- Disable
-- {"nvim-lua/completion-nvim"},
-- {"aca/emmet-ls"},
-- {
--   "hrsh7th/nvim-cmp",
--   requires = {
--     "hrsh7th/vim-vsnip",
--     "hrsh7th/cmp-buffer",
--   },
--   config = function()
--     require("user.comp").config()
--   end,
-- },
-- {"wfxr/minimap.vim"},
-- {
--   'tanvirtin/vgit.nvim',
--   requires = {
--     'nvim-lua/plenary.nvim'
--   }
-- },
