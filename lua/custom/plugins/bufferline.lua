return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  branch = 'main',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {}
  end
}
