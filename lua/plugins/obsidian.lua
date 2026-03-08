return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = false,
  config = function()
    require("obsidian").setup({
      legacy_commands = false,

      -- Define your Obsidian workspace
      workspaces = {
        { name = "personal", path = "/home/kali/Documents/iamzxcharias" },
      },

      -- Enable the Obsidian UI
      ui = {
        enable = true,
      },

      -- Function to determine the filename of a new note
      -- Filename = title given by user; fallback = timestamp
      note_id_func = function(title)
        if title ~= nil then
          return title:gsub(" ", "-"):lower()
        else
          return tostring(os.time())
        end
      end,

      -- Modern way to customize frontmatter
      frontmatter = {
        func = function()
          -- Only add a random ID; no aliases
          return {
            id = tostring(os.time()) .. "-" .. math.random(1000, 9999),
          }
        end,
      },
    })

    -- Neovim settings for hiding Markdown markup
    vim.opt.conceallevel = 2        -- Hide syntax like **bold**
    vim.opt.concealcursor = "nc"    -- Conceal only in normal & command mode
  end,
}
