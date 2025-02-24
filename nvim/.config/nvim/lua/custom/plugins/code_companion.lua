return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup {
      adapters = {
        deepseek = function()
          return require('codecompanion.adapters').extend('deepseek', {
            env = {},
            schema = {
              model = {
                default = 'deepseek-reasoner',
              },
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = 'deepseek' },
        inline = { adapter = 'deepseek' },
        agent = { adapter = 'deepseek' },
      },
    }
  end,
}
