vim.g.mapleader = " "

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

-- Jump, jump, jump, jump around (but keep the cursor in the middle of the screen)
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Format buffer
vim.keymap.set("n", "<A-F>", function()
  vim.lsp.buf.format()
end)

-- Move between splits
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- Resize splits
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true })

-- Close Split
vim.api.nvim_set_keymap("n", "<leader>sc", ":close<CR>", { noremap = true })

-- Create split
vim.api.nvim_set_keymap("n", "<leader>sv", ":vsplit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sh", ":split<CR>", { noremap = true })
