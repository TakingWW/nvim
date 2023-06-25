local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "jdtls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },
  {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("custom.configs.mappings")
  end,
  opts = {
  }
}
}

return plugins
