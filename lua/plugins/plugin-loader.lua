print("Plugins being loaded from lua/plugin-loader.lua")
return {
	{
		'sainnhe/gruvbox-material',
	},
	{
		'nvim-treesitter/nvim-treesitter',

		build = ':TSUpdate',
		config = function()
			local configs = require 'nvim-treesitter.configs'
			configs.setup {
				highlight = { enable = true },
				indent = { enable = true },
				ensure_installed = {
					"bash",
					"c",
					"diff",
					"html",
					"javascript",
					"jsdoc",
					"json",
					"jsonc",
					"lua",
					"luadoc",
					"luap",
					"markdown",
					"markdown_inline",
					"python",
					"query",
					"regex",
					"toml",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"xml",
					"yaml",
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
				textobjects = {
					move = {
						enable = true,
						goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
						goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
						goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
						goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
					},
				},
			}
		end,
	},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = {
			{ mode = "n", "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find files." },
		}
	},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
}
