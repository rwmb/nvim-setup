
return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  -- Optional dependencies
  dependencies = {
    { "echasnovski/mini.icons", opts = {} }
  },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require("oil").setup({
      colums = {
        "icon",
        "size",
        "mtime"
      },
      view_options = {
        show_hidden = true,
      }
    })
    vim.keymap.set("n", ";o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end
}

