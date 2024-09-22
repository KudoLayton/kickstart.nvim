return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      size = 20,
      shade_filetypes = {},
      open_mapping = [[<c-\>]],
      shade_terminals = true,
      --shading_factor = 1,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'float',
    }
  end,
}
