return {
	"echasnovski/mini.nvim",
	version = false, -- main branch
	config = function()
		require("mini.diff").setup()
		require("mini.basics").setup({
			options = {
				basic = true,
				extra_ui = false,
			},
			mappings = {
				basic = true,
				windows = true,
				move_with_alt = true,
			},
			autocommands = {
				basic = true,
				relnum_in_visual_mode = true,
			},
		})
		require("mini.bracketed").setup()
		require("mini.pairs").setup()
		require("mini.pick").setup()
		require("mini.surround").setup()
		require("mini.indentscope").setup()
		require("mini.cursorword").setup({
			delay = 0
		})
	end,
}
