return {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                json = { "prettier" }
            }
        })

        vim.keymap.set({ "n", "v" }, "<leader>p", function()
            conform.format({
                formatters_by_ft = {
                    rust = { "rustfmt" }
                },
                lsp_format = "fallback",
                async = true,
            })
        end,  { desc = "Format file" })
    end
}
