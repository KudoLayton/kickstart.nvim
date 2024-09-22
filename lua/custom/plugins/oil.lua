return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local oil = require 'oil'
    oil.setup {
      view_options = {
        show_hidden = true,
      },
    }

    local toggle_oil = function()
      oil.toggle_float(oil.get_current_dir())
    end

    vim.keymap.set('n', '<leader>F', toggle_oil, { desc = 'Open [f]ile browser' })
  end,
}
