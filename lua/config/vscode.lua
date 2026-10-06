-- Keymaps for running inside Cursor/VS Code via the vscode-neovim extension.
-- Mirrors the terminal keymaps, but calls editor commands instead of plugins.
local vscode = require("vscode")
local map = vim.keymap.set

local function action(name)
  return function()
    vscode.action(name)
  end
end

-- Telescope
map("n", "<leader>ff", action("workbench.action.quickOpen"), { desc = "Find files" })
map("n", "<leader>fg", action("workbench.action.quickTextSearch"), { desc = "Live grep" })
map("n", "<leader>fb", action("workbench.action.showAllEditors"), { desc = "Buffers" })

-- Symbols
map("n", "<leader>ss", action("workbench.action.gotoSymbol"), { desc = "Document symbols" })
map("n", "<leader>sS", action("workbench.action.showAllSymbols"), { desc = "Workspace symbols" })

-- Oil
map("n", "<leader>e", action("workbench.files.action.showActiveFileInExplorer"), { desc = "Reveal file in explorer" })

-- Lsp configs (gr* match Neovim's built-in LSP defaults)
map("n", "K", action("editor.action.showHover"), { desc = "Hover" })
map("n", "gd", action("editor.action.revealDefinition"), { desc = "Goto definition" })
map("n", "grr", action("editor.action.goToReferences"), { desc = "Goto references" })
map("n", "gri", action("editor.action.goToImplementation"), { desc = "Goto implementation" })
map("n", "grn", action("editor.action.rename"), { desc = "Rename" })
map({ "n", "x" }, "gra", action("editor.action.quickFix"), { desc = "Code action" })

-- Diagnostics
map("n", "<leader>d", action("editor.action.showHover"), { desc = "Open Line Diagnostics" })
map("n", "]d", action("editor.action.marker.next"), { desc = "Goto next diagnostic" })
map("n", "[d", action("editor.action.marker.prev"), { desc = "Goto prev diagnostic" })
