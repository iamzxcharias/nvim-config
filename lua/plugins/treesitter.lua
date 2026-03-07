return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = {
        "lua", "javascript", "c", "cpp", "vim", "vimdoc",
        "html", "css", "python", "bash",
        "markdown", "markdown_inline"
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = { enable = true },
      context_commentstring = { enable = true, enable_autocmd = false },
    })

    vim.opt.conceallevel = 2
    vim.opt.concealcursor = "nc"
  end,
}
