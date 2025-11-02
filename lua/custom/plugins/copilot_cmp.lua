return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opt = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  {
    'zbirenbaum/copilot-cmp',
    opt = {},
  },
}
