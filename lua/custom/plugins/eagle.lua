return {
  'soulis-1256/eagle.nvim',
  enabled = false,
  init = function()
    vim.o.mousemoveevent = true
  end,
  config = function()
    require('eagle').setup {}
  end,
}
