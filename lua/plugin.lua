local user_cfg = require("user." .. "terria")
local default = user_cfg["default_plugins"]

local default_plugins = {
	presence = "andweeb/presence.nvim",
	wilder = "gelguy/wilder.nvim",
	harpoon = "ThePrimeagen/harpoon",
}

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("onsails/lspkind.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("mfussenegger/nvim-dap")
	use("mhartington/formatter.nvim")
	use("kyazdani42/nvim-web-devicons")

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			vim.cmd([[ let g:neo_tree_remove_legacy_command = 1 ]])
		end,
	})
	for key, value in pairs(default) do
		if value then
			use(default_plugins[key])
		end
	end

	for _, plug in ipairs(user_cfg["plugins"]) do
		use(plug)
	end
end)
