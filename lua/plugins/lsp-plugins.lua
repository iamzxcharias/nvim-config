return {
{
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end,
},

{
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "bashls",
        "clangd",
        "cssls",
        "html",
        "ast_grep",
        "ltex",
        "remark_ls",
        "powershell_es",
        "ts_ls",
      },
    })
  end,
},

{
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("lua_ls",{ capabilities = capabilities })
    vim.lsp.config("bashls",{ capabilities = capabilities })
    vim.lsp.config("clangd",{ capabilities = capabilities })
    vim.lsp.config("cssls",{ capabilities = capabilities })
    vim.lsp.config("html",{ capabilities = capabilities })
    vim.lsp.config("ast_grep",{ capabilities = capabilities })
    vim.lsp.config("ltex",{ capabilities = capabilities })
    vim.lsp.config("remark_ls",{ capabilities = capabilities })
    vim.lsp.config("powershell_es",{ capabilities = capabilities })
    vim.lsp.config("ts_ls",{ capabilities = capabilities })

    vim.lsp.enable({
      "lua_ls",
      "bashls",
      "clangd",
      "cssls",
      "html",
      "ast_grep",
      "ltex",
      "remark_ls",
      "powershell_es",
      "ts_ls",
    })

    vim.keymap.set("n","K",vim.lsp.buf.hover)
    vim.keymap.set("n","<leader>gd",vim.lsp.buf.definition)
    vim.keymap.set({"n","v"},"<leader>ca",vim.lsp.buf.code_action)

  end,
},
}
