local plugins = {
  {
    "williamboman/mason.nvim",
    opt = {
      ensure_installed = {
        "pyright",
        "clangd",
        "clang-format",
        "codelldb",
        "gopls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    init = function ()
      require("core.utils").load_mappings("markdown")
    end,
    config = function()
      require('render-markdown').setup({})
    end,
  },
}

return plugins
