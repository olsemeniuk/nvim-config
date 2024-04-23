-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Show recent files" })
vim.keymap.set("n", "<leader>ft", "<CMD>TodoTelescope<CR>", { desc = "Find todos" })

-- neotree
vim.keymap.set(
	"n",
	"<leader>e",
	":Neotree toggle source=filesystem reveal=true position=float<CR>",
	{ noremap = true, silent = true, desc = "Open files tree" }
)

vim.keymap.set(
	"n",
	"<leader>s",
	":Neotree toggle source=git_status position=float<CR>",
	{ noremap = true, silent = true, desc = "Show git status" }
)

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Show definition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })

-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format code" })

-- todo comments
vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- other
vim.keymap.set("n", "<leader>h", "<CMD>nohlsearch<CR>", { desc = "Clear search highlights" })
vim.keymap.set({ "n", "v", "i" }, "<C-s>", "<CMD>wa<CR>", { desc = "Save all changes" })
vim.keymap.set({ "n", "v", "i" }, "<A-w>", "<CMD>q<CR>", { desc = "Close file" })
