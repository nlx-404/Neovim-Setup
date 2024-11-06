--leader
vim.g.mapleader = ","

--normal
vim.keymap.set('n', 'h', 'k', { noremap = true, silent = true })
vim.keymap.set('n', 'j', 'h', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'l', { noremap = true, silent = true })
vim.keymap.set('n', 'l', 'j', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", "<C-w>p", { noremap = true, silent = true })


--telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

--file tree
vim.keymap.set("n", "<leader>q", ":NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<cr>")
-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- format code using LSP
--vim.keymap.set("n", "<leader>fm" , vim.lsp.buf.format)


