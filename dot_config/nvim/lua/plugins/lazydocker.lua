return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>dd",
        function()
          Snacks.terminal({ "lazydocker" }, {
            cwd = LazyVim.root(),
            esc_esc = false,
            ctrl_hjkl = false,
            win = { style = "float", width = 0.9, height = 0.9, border = "rounded" },
          })
        end,
        desc = "Lazydocker (Root Dir)",
      },
      {
        "<leader>dD",
        function()
          Snacks.terminal({ "lazydocker" }, {
            cwd = vim.uv.cwd(),
            esc_esc = false,
            ctrl_hjkl = false,
            win = { style = "float", width = 0.9, height = 0.9, border = "rounded" },
          })
        end,
        desc = "Lazydocker (cwd)",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>d", group = "debug/docker" },
      },
    },
  },
}
