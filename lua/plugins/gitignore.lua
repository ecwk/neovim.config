return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"wintermute-cell/gitignore.nvim",
		config = function()
			local gitignore = require("gitignore")
		end,
	},
}
