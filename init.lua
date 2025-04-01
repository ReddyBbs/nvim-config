-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mason").setup()
require("mason-lspconfig").setup()
require("conform").setup()
require("mason-conform").setup()

require("lspconfig").texlab.setup({})
require("lspconfig").asm_lsp.setup({ filetypes = { "asm", "s", "vmasm" } })

-- require("neo-tree").setup({
--   event = "file_opened",
--   handler = function()
--      require("neo-tree.command").execute({ action = "focus" })
--   end,
-- })

-- local servers = {
--   ltex = {
--     ltex = {
--       language = "fr",
--     },
--   },
--   lua_ls = {
--     Lua = {
--       workspace = { checkThirdParty = false },
--       telemetry = { enable = false },
--     },
--   },
-- }
