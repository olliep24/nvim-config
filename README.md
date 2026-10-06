# Neovim config

Personal Neovim config using [lazy.nvim](https://github.com/folke/lazy.nvim). It also runs inside Cursor/VS Code through the [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) extension.

## Cursor / VS Code

vscode-neovim sets `vim.g.vscode`, and the config checks that flag:

- **Plugins**: `lua/config/lazy.lua` uses `defaults.cond`, so in Cursor every plugin is disabled unless its spec has `vscode = true`. Cursor already handles the file picker, file explorer, LSP, completion and theme. Opt in only for editing plugins (surround, comment, motions, text objects). The automatic plugin update check is also off in Cursor.
- **Keymaps**: `lua/config/vscode.lua` is loaded from `init.lua` only in Cursor. It maps the same keys to Cursor commands. The LSP keys in `keymaps.lua` only apply in terminal Neovim.
- **Options**: `options.lua` stops before the UI, split and undo settings in Cursor. Those come from Cursor's own settings (below).

### Cursor settings

To match `options.lua`, add these to Cursor's user `settings.json` (Cmd+Shift+P → *Preferences: Open User Settings (JSON)*):

```jsonc
{
  "editor.lineNumbers": "relative",       // number + relativenumber
  "editor.cursorSurroundingLines": 8,     // scrolloff
  "workbench.colorTheme": "Catppuccin Macchiato", // needs the "Catppuccin for VSCode" extension
  "editor.tabSize": 2,                    // Cursor's indentation overrides Neovim's
  "editor.insertSpaces": true
}
```

The other options already match Cursor's defaults (`wrap`, `cursorline`, `signcolumn`, `splitright`). Cursor has no equivalent for `splitbelow` or a persistent `undofile`.
