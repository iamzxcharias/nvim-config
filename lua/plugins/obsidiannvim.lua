return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = false,
  config = function()
    require("obsidian").setup({
      legacy_commands = false,
      workspaces = {
        { name = "personal", path = "/home/zxch/Documents/iamzxcharias" },
      },
      ui = {
        enable = true,
      },
    })
    vim.opt.conceallevel = 2
    vim.opt.concealcursor = "nc"
  end,
}
