return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim", "folke/todo-comments.nvim" },
	},
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
	},
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "numToStr/Comment.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} },
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = { "windwp/nvim-ts-autotag" },
	},
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "williamboman/mason.nvim", lazy = false, opts = {} },
	{ "williamboman/mason-lspconfig.nvim", lazy = false },
	{ "neovim/nvim-lspconfig", lazy = false },
	{ "nvimtools/none-ls.nvim", dependencies = { "nvimtools/none-ls-extras.nvim" } },
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"L3MON4D3/LuaSnip",
		event = "InsertEnter",
		dependencies = { "saadparwaiz1/cmp_luasnip", "rafamadriz/friendly-snippets" },
	},
	{ "hrsh7th/nvim-cmp", event = "InsertEnter" },
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{
		"folke/todo-comments.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{ "stevearc/oil.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },
	{ "m4xshen/autoclose.nvim", event = { "InsertEnter" }, opts = {} },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
		opts = {},
	},
	{ "lukas-reineke/indent-blankline.nvim", event = { "BufReadPre", "BufNewFile" }, main = "ibl" },
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},
}
