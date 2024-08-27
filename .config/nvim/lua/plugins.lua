return require('packer').startup(function()

    use 'windwp/nvim-ts-autotag'
	use 'wbthomason/packer.nvim'
    use 'lervag/vimtex'
	use 'tikhomirov/vim-glsl'
	use 'ThePrimeagen/vim-be-good'
	use "ellisonleao/gruvbox.nvim"
	use 'windwp/nvim-autopairs'
	use 'tpope/vim-commentary'
	use 'tpope/vim-dispatch'
	use 'tpope/vim-fugitive'
    use {
      'declancm/maximize.nvim',
      config = function() require('maximize').setup() end
    }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'eandrju/cellular-automaton.nvim'
	use 'ntpeters/vim-better-whitespace'
  	use
	{
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
  	}
	use {
		'neovim/nvim-lspconfig',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig'
	}
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
    use 'alexghergh/nvim-tmux-navigation'
end)
