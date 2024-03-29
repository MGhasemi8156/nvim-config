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
}

return plugins
