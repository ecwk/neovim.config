return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason.nvim",
			"mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pyright",
					"rust_analyzer",
					"ts_ls",
					"html",
					"cssls",
					"lua_ls",
				},
			})
			-- vim.lsp.config("tailwindcss", {
			--     settings = {
			--         tailwindCSS = {
			--             -- classAttributes = { "clsx" }
			--         }
			--     }
			-- })
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		enabled = true,
		opts = {
			toggle_key = "<M-k>",
			floating_window = false,
		},
	},
}
