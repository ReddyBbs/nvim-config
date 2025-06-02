-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mason").setup()
require("mason-lspconfig").setup()
require("conform").setup()
require("mason-conform").setup()
