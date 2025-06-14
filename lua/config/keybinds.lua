local map = vim.keymap.set

-- Insert movement
--map("i", "<C-h>", "<Left>", { desc = "Move left" })
--map("i", "<C-l>", "<Right>", { desc = "Move right" })
--map("i", "<C-j>", "<Down>", { desc = "Move Down" })
--map("i", "<C-k>", "<Up>", { desc = "Move Up", nowait = true })

-- Windows
--map("n", "<leader>\"", "<C-w>s<C-w>j", { desc = "Split window horizontally" })
--map("n", "<leader>%", "<C-w>v<C-w>l", { desc = "Split window vertically" })
--map("n", "<leader>q", "<C-w>q", { desc = "Quit window" })
--map("n", "<leader>h", "<C-w>h", { desc = "Focus left window" })
--map("n", "<leader>l", "<C-w>l", { desc = "Focus right window" })
--map("n", "<leader>j", "<C-w>j", { desc = "Focus bottom window" })
--map("n", "<leader>k", "<C-w>k", { desc = "Focus top window" })

-- Easier movement alternative keybinds
map("i", "<C-a>", "<ESC>^i", { desc = "Move beginning of line" })
map("n", "<C-a>", "^", { desc = "Move beginning of line" })
map({"n", "i" }, "<C-e>", "<End>", { desc = "Move end of line" })
map("n", "<C-Up>", "<C-y>", { noremap = true })
map("n", "<C-Down>", "<C-e>", { noremap = true })

-- Diagnostics
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Open diagnostics" })
map("n", "<leader>dl", vim.diagnostic.setqflist, { desc = "List diagnostics" })
map("n", "<leader>de", function() vim.diagnostic.setqflist({ severity = "ERROR" }) end, { desc = "List diagnostic errors" })

-- Toggle options
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number" })

-- Highlight
map("n", "<Esc>", ":noh<CR><Esc>", { desc = "Clear highlight", silent = true })

map("n", "<C-s>", ":update<CR>", { desc = "Save buffer", silent = true })
map("i", "<C-s>", "<C-O>:update<CR>", { desc = "Save buffer", silent = true })
map("n", "<C-K>", "<CMD>lua vim.lsp.buf.signature_help()<CR>", {desc = "Open signature help" })

-- Telescope
map("n", "<leader>ff", ":Pick files<CR>")
map("n", "<leader>fg", ":Pick grep_live<CR>")
map("n", "<leader>fh", ":Pick help<CR>")

-- Tabs
map("n", "<leader>th", ":tabprevious<CR>", { desc = "Previous tab" })
map("n", "<leader>tl", ":tabnext<CR>", { desc = "Next tab" })
map("n", "<leader>tH", ":-tabmove<CR>", { desc = "Swap with previous tab" })
map("n", "<leader>tL", ":+tabmove<CR>", { desc = "Swap with next tab" })

-- Explorer
map("n", "<leader>e", ":Oil<CR>", { desc = "Open file explorer" })
map("n", "<leader>o", ":Oil<CR>", { desc = "Open file explorer" })
