-- Define a shorter alias for the Neovim keymap engine
local map = vim.keymap.set

-- Lsp configs
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open Line Diagnostics" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Goto next diagnostic" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Goto prev diagnostic" })
