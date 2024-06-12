return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    -- "jay-babu/mason-nvim-dap.nvim",
    "williamboman/mason.nvim",
    "theHamsta/nvim-dap-virtual-text",

    -- Plugins
    "mfussenegger/nvim-dap-python",
    "leoluz/nvim-dap-go",
  },
  config = function()
    require "configs.dap"
  end,
}
