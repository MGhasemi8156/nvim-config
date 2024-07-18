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
 -- Go Debugger
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    init = function ()
      require("core.utils").load_mappings("dap_ui")
    end
  },
}

return plugins
