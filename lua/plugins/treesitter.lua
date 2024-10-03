return {
'nvim-treesitter/nvim-treesitter',
build = ":TSUpdate",
opts = {
  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = {
    "bash",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "printf",
    "python",
    "query",
    "regex",
    "tsx",
    "typescript",
    "vim"
  }
}
}
