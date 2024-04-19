-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})

-- neotree
vim.keymap.set(
	"n",
	"<leader>e",
	":Neotree toggle source=filesystem reveal=true position=float<CR>",
	{ noremap = true, silent = true }
)

vim.keymap.set(
	"n",
	"<leader>s",
	":Neotree toggle source=git_status position=float<CR>",
	{ noremap = true, silent = true }
)

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- todo comments
vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
