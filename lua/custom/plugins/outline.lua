return {
  'hedyhli/outline.nvim',
  lazy = true,
  cmd = { 'Outline', 'OutlineOpen' },
  keys = {
    { '<leader>o', '<cmd>Outline<CR>', desc = 'Toggle [O]utline' },
  },
  opts = {
    highlight_hovered_item = true,
  },
}
