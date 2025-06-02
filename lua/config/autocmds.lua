-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.keymap.set("n", "<leader>co", "<cmd>Ouroboros<cr>", { desc = "Switch to header/implementation" })
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.keymap.set(
      "n",
      "<leader>cO",
      "<cmd>vsplit | Ouroboros<cr>",
      { desc = "Open header/implementation in vertical split" }
    )
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.keymap.set("n", "<leader>cp", "<cmd>MarkdownPreview<cr>", { desc = "Open preview" })
  end,
})
