if true then
  return {}
end

return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1001, -- this plugin needs to run before anything else
    config = true,
    -- opts = {
    --   rocks = { "magick" },
    -- },
  },
  {
    "3rd/image.nvim",
    dependencies = { "luarocks.nvim" },
    opts = {},
  },
}
