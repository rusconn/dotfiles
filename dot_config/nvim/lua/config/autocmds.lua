-- markdownでは組み込みスペルチェックを切る(typos-lspに任せる)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.spell = false
  end,
})

-- hiddenファイルを通常色で表示する
local function fix_hidden_hl()
  vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { link = "Normal" })
end

fix_hidden_hl()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = fix_hidden_hl,
})
