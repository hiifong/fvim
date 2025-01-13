return {
  "Kicamon/markdown-table-mode.nvim",
  event = "VeryLazy",
  config = function()
    require("markdown-table-mode").setup()
  end,
}
