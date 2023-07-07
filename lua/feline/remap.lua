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
