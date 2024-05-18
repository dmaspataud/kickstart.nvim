return {
  'f-person/git-blame.nvim',
  event = 'VeryLazy',
  version = '*',
  opts = {},
  config = function()
    require('gitblame').setup {}
    vim.api.nvim_set_keymap('n', '<leader>gb', ':GitBlameToggle<CR>', { noremap = true, silent = true })
  end,
}
