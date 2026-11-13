return {
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    build = false,
    dependencies = {
      "nvim-neotest/nvim-nio",
      "j-hui/fidget.nvim",
      "lunarmodules/lua-mimetypes",
      {
        "manoelcampos/xml2lua",
        config = function(plugin)
          -- xml2luaはlua/フォルダが無い構造のため、手動でパスを通す
          package.path = package.path .. ";" .. plugin.dir .. "/?.lua"
        end,
      },
      {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          table.insert(opts.ensure_installed, "http")
        end,
      },
    },
    keys = {
      { "<leader>Rr", "<cmd>Rest run<cr>", desc = "Run HTTP request", ft = "http" },
      { "<leader>Rl", "<cmd>Rest last<cr>", desc = "Run last HTTP request", ft = "http" },
    },
  },
}
