local map = vim.keymap.set

map("n", "<leader>fy", function()
  local path = vim.fn.expand("%:.")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy relative path" })

map("n", "<leader>fY", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy absolute path" })

-- DBUI: .sqlファイルでも<leader>Sでクエリを実行できるようにする
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function(event)
    -- ノーマルモード: <leader>Sでファイル全体を実行
    vim.keymap.set("n", "<leader>S", "<cmd>%DB<cr>", {
      buffer = event.buf,
      desc = "Execute entire SQL file",
    })
    -- ビジュアルモード: <leader>Sで選択した範囲を実行
    vim.keymap.set("v", "<leader>S", ":DB<cr>", {
      buffer = event.buf,
      desc = "Execute selected SQL",
    })
  end,
})
