-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true   -- shows distance to other lines, makes 5j/3k etc. way faster

-- Indentation
vim.opt.expandtab = true        -- tabs become spaces
vim.opt.shiftwidth = 2          -- width of auto-indent
vim.opt.tabstop = 2             -- width of a tab character
vim.opt.smartindent = true      -- auto-indent new lines sensibly

-- Search
vim.opt.ignorecase = true       -- case-insensitive search...
vim.opt.smartcase = true        -- ...unless you type a capital letter

-- System integration
vim.opt.clipboard = "unnamedplus"  -- yank/paste shares your OS clipboard (huge one — without this, y and p only work within vim)
vim.opt.mouse = "a"             -- mouse still works if you want it (scrolling, resizing splits)

-- UI/UX
vim.opt.termguicolors = true    -- true 24-bit color, colorschemes look right
vim.opt.scrolloff = 8           -- keeps 8 lines of context above/below cursor when scrolling
vim.opt.signcolumn = "yes"      -- reserves a gutter column so text doesn't jump when git signs/diagnostics appear
vim.opt.wrap = false            -- don't soft-wrap long lines
vim.opt.cursorline = true       -- highlights current line

-- Splits
vim.opt.splitright = true       -- vertical splits open to the right
vim.opt.splitbelow = true       -- horizontal splits open below

-- Undo
vim.opt.undofile = true         -- persistent undo history across sessions (survives quitting nvim)
