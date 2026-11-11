return {
  -- typos-lsp本体をMasonで入れる
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "typos-lsp")
    end,
  },
  -- LSPとして有効化
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        typos_lsp = {
          init_options = {
            diagnosticSeverity = "Hint", -- Error/Warning/Info/Hint。赤線を避けるならHintかInfo
          },
        },
      },
    },
  },
}
