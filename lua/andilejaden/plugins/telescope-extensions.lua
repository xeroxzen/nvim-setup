return {
  -- Telescope undo history
  {
    "debugloop/telescope-undo.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      {
        "<leader>u",
        "<cmd>Telescope undo<cr>",
        desc = "Undo history",
      },
    },
    config = function()
      require("telescope").load_extension("undo")
    end,
  },

  -- File browser extension
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>fe",
        "<cmd>Telescope file_browser<cr>",
        desc = "File browser",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
