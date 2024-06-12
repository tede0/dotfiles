require("mason").setup {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "prettier",
    "prettierd",
    "typescript-language-server",
    "tailwindcss-language-server",
    -- "flake8",
    "isort",
    "mypy",
    "ruff-lsp",
    "pyright",
    "gopls",
  },
}

local null_ls = require "null-ls"

require("mason-null-ls").setup {
  automatic_installation = false,
  methods = {
    diagnostics = true,
    formatting = false, -- This is handled by conform
    code_actions = true,
    completion = true,
    hover = true,
  },
  handlers = {},
}

null_ls.setup()

