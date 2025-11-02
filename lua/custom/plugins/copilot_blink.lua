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
    'saghen/blink.cmp',
    dependencies = { 'fang2hou/blink-copilot' },
    opts = {
      completion = {
        list = {
          selection = {
            preselect = false,
          },
        },
      },
      keymap = {
        preset = 'enter',
        ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
      },
      sources = {
        default = { 'copilot', 'lsp', 'path', 'snippets', 'lazydev' },
        providers = {
          copilot = {
            name = 'copilot',
            module = 'blink-copilot',
            score_offset = 100,
            async = true,
          },
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        },
      },
    },
  },
}
