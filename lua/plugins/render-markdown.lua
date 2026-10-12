return {
  'MeanderingProgrammer/render-markdown.nvim',
  -- The upstream install snippet also lists 'nvim-treesitter/nvim-treesitter',
  -- but it isn't needed here. Neovim bundles the tree-sitter engine
  -- (vim.treesitter) plus a few parsers, including the required markdown and
  -- markdown_inline. nvim-treesitter is a separate plugin that downloads and
  -- compiles parsers for other languages (it needs tree-sitter-cli and a C
  -- compiler). Add it only to enable the html/latex/yaml features below or to
  -- highlight fenced code blocks in languages beyond lua/vim/c/query.
  --
  -- Uses standalone mini.icons (already installed via oil.nvim) rather than
  -- the full mini.nvim suite from the upstream snippet.
  dependencies = { 'nvim-mini/mini.icons' },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    -- These need the html/latex/yaml parsers, which Neovim doesn't bundle.
    -- Disabled to keep :checkhealth clean. If enabled, html conceals HTML
    -- comments, latex renders formulas (also needs utftex or latex2text), and
    -- yaml styles frontmatter.
    html = { enabled = false },
    latex = { enabled = false },
    yaml = { enabled = false },
  },
}
