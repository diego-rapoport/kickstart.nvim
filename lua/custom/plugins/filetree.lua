return {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependecies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  config =function ()
  	require('neo-tree')
  end
  }
