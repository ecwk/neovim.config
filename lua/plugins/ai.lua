return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<M-'>",
					accept_word = false,
					accept_line = false,
					next = "<M-n>",
					prev = "<M-p>",
					dismiss = "<M-q>",
				},
			},
			filetypes = {
				["*"] = true,
			},
		})
	end,
}
