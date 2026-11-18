return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "dark",
      transparent = false,
      italic_comments = true,
    },
    config = function(_, opts)
      require("vscode").setup(opts)

      -- colorscheme適用のたびにANSIパレットとカスタムハイライトを再設定する
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "vscode",
        callback = function()
          -- lazygit内のANSI色(ハッシュ・差分など)
          vim.g.terminal_color_1 = "#ED7071" -- 赤: 未pushのハッシュ
          vim.g.terminal_color_2 = "#BCDF59" -- 緑: 追加差分 / マージ済みハッシュ
          vim.g.terminal_color_3 = "#DCDCAA" -- 黄: pushed済みハッシュ
          vim.g.terminal_color_9 = "#ED7071"
          vim.g.terminal_color_10 = "#BCDF59"
          vim.g.terminal_color_11 = "#DCDCAA"

          -- 枠線用カスタムハイライト
          vim.api.nvim_set_hl(0, "LazyGitActiveBorder", { fg = "#D4D4D4", bold = true })
          vim.api.nvim_set_hl(0, "LazyGitInactiveBorder", { fg = "#858585" })
        end,
      })
    end,
  },

  { "LazyVim/LazyVim", opts = { colorscheme = "vscode" } },

  {
    "folke/snacks.nvim",
    opts = {
      lazygit = {
        theme = {
          activeBorderColor = { fg = "LazyGitActiveBorder", bold = true },
          searchingActiveBorderColor = { fg = "DiagnosticWarn", bold = true },
          inactiveBorderColor = { fg = "LazyGitInactiveBorder" },
          optionsTextColor = { fg = "LazyGitActiveBorder" },
          selectedLineBgColor = { bg = "Visual" },
          unstagedChangesColor = { fg = "DiagnosticError" },
        },
      },
    },
  },
}
