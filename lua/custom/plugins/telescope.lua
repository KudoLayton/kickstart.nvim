-- Telescope-live-grep-args keymap
vim.keymap.set('n', '<leader>sS', ':Telescope lsp_dynamic_workspace_symbols<CR>', { desc = '[S]earch by Workspace [S]ymbols' })

-- Telescope-typed-grep
vim.keymap.set('n', '<leader>stg', function()
  local type = vim.fn.input 'Glob Type (e.g. cpp): '
  require('telescope.builtin').live_grep { type_filter = type }
end, { desc = '[S]earch with [T]ype [G]rep' })

-- Telescope-glob-grep
vim.keymap.set('n', '<leader>spg', function()
  local glob = vim.fn.input 'Glob Pattern (e.g. *.{cpp,h}): '
  require('telescope.builtin').live_grep { glob_pattern = glob }
end, { desc = '[S]earch with glob [P]attern [G]rep' })

-- Telescope-query-grep
vim.keymap.set('n', '<leader>sqg', function()
  local search_pattern = vim.fn.input 'search pattern: '
  require('telescope.builtin').grep_string { search = search_pattern }
end, { desc = '[S]earch with [Q]uery [G]rep' })

-- Telescope-typed-query-grep
vim.keymap.set('n', '<leader>stqg', function()
  local type = vim.fn.input 'Glob Type (e.g. cpp): '
  local search_pattern = vim.fn.input 'search pattern: '
  require('telescope.builtin').grep_string {
    search = search_pattern,
    additional_args = { '-t', type },
  }
end, { desc = '[S]earch with [Q]uery [G]rep' })

return {
  'nvim-telescope/telescope-live-grep-args.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    local telescope = require 'telescope'
    telescope.load_extension 'live_grep_args'
    vim.keymap.set('n', '<leader>sag', telescope.extensions.live_grep_args.live_grep_args, { desc = '[S]earch by [A]rgmumented [G]rep' })
  end,
}
