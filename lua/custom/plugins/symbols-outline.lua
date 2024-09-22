return {
  'simrat39/symbols-outline.nvim',
  config = function()
    require('symbols-outline').setup {
      highlight_hovered_item = true,
      show_guides = true,
    }
  end,
}
