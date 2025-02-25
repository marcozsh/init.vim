-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use({
		'stankovictab/mgz.nvim',
		as = 'mgz',
		config = function()
			vim.cmd('colorscheme mgz')
		end
	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })


	use { 'VonHeikemen/lsp-zero.nvim',
		requires = {
			--LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },
			--Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
			--Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}
	use { 'vim-airline/vim-airline' }
	use { 'vim-airline/vim-airline-themes' }
	use { 'preservim/nerdtree' }
	use {'kdheepak/lazygit.nvim'}
	use {'github/copilot.vim'}
	use  {'nvim-lua/plenary.nvim'}
	use {'CopilotC-Nvim/CopilotChat.nvim'}
	use {'lukas-reineke/indent-blankline.nvim'}
	use {'HiPhish/rainbow-delimiters.nvim'}
	use {'ryanoasis/vim-devicons'}

	use {
		'luckasRanarison/tailwind-tools.nvim',
		name = 'tailwind-tools',
		run = ':UpdateRemotePlugins',
		requires = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-telescope/telescope.nvim', -- opcional
			'neovim/nvim-lspconfig', -- opcional
		},
		config = function()
			-- tu configuración aquí
		end
	}



end)
