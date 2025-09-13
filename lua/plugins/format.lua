return {
	{
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup({})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					["_"] = { "biome", "prettier" },
				},
				formatters = {
					["tailwind-class-sorter"] = {
						command = "biome",
						args = { "lint", "$FILENAME", "--only=lint/nursery/useSortedClasses", "--write", "--unsafe" },
						stdin = false,
					},
				},
			})

			vim.keymap.set({ "n", "v" }, "<leader>p", function()
				if vim.list_contains({ "typescriptreact", "javascriptreact" }, vim.o.filetype) then
					conform.format({
						formatters = { "tailwind-class-sorter" },
						lsp_format = "never",
						async = false,
					})
				end

				conform.format({
					lsp_format = "fallback",
					async = true,
				})
			end, { desc = "Format file" })
		end,
	},
}
