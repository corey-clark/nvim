local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Navigate between vim and tmux panes
  -- Without this you'll get stuck in vim
  -- from inside tmux
  use 'christoomey/vim-tmux-navigator'

  -- Fuzzy file finder with preview
  -- We use this package instead of others
  -- like ctrl+p because it ignores node modules
  -- by default
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Our chosen theme and color scheme
  --use 'vim-scripts/xoria256.vim'
  use 'cocopon/iceberg.vim'

  -- Our file explorer of choice
  use 'preservim/nerdtree'

  -- File and Folder Icons
  use 'ryanoasis/vim-devicons'

  -- Comment out code with a shortcut
  use 'scrooloose/nerdcommenter'

  -- short cut to swap window split locations
  use 'wesQ3/vim-windowswap'

  -- HTML emmet support
  use 'mattn/emmet-vim'

  -- Git support
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'zivyangll/git-blame.vim'

  -- highlight yanks
  use 'machakann/vim-highlightedyank'

  -- Git blame inline with source code
  use 'APZelos/blamer.nvim'

  -- Allow . to be used to repeat last command
  use 'tpope/vim-repeat'

  -- Auto pair parens and tags
  use 'jiangmiao/auto-pairs'
  use 'Valloric/MatchTagAlways'

  -- syntax highlighting and indenting
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Ast for file changes - great if you need to go back in time
  use'mbbill/undotree'

  -- nnn file manager with vim commands
  use {
    "luukvbaal/nnn.nvim",
     config = function() require("nnn").setup() end
  }

  -- lsp zero config / this replaces coc
use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    -- Snippet Collection (Optional)
    {'rafamadriz/friendly-snippets'},
  }
}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
