return {
  {
    "voldikss/vim-floaterm",
    event = "VeryLazy",
    keys = {
      {
        "<C-t>",
        "<cmd>FloatermToggle<cr>",
        desc = "Toggle Floaterm",
      },
      {
        "<C-t>",
        "<cmd>FloatermToggle<cr>",
        desc = "Toggle Floaterm",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<C-n>",
        "<cmd>FloatermNew<cr>",
        desc = "New Floaterm",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<C-h>",
        "<cmd>FloatermPrev<cr>",
        desc = "Prev Floaterm",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<C-l>",
        "<cmd>FloatermNext<cr>",
        desc = "Next Floaterm",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<C-f>",
        "<cmd>FloatermFirst<cr>",
        desc = "First Floaterm",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<C-e>",
        "<cmd>FloatermLast<cr>",
        desc = "Last Floaterm",
        ft = "floaterm",
        mode = "t",
      },
      -- use <esc><esc> of LazyVim instead
      -- NOTE: 13 版本 LazyVim 去掉了，需要手动加上
      {
        "<esc><esc>",
        "<C-\\><C-n>",
        desc = "Enter Normal Mode",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<C-j>",
        function()
          local w = vim.g.floaterm_width
          if w == 0.95 then
            vim.api.nvim_command("FloatermUpdate --height=0.6 --width=0.6")
            vim.g.floaterm_width = 0.6
            vim.g.floaterm_height = 0.6
          else
            vim.api.nvim_command("FloatermUpdate --height=0.95 --width=0.95")
            vim.g.floaterm_width = 0.95
            vim.g.floaterm_height = 0.95
          end
        end,
        desc = "Toggle Floaterm Size",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<C-q>",
        "<cmd>FloatermKill<cr>",
        desc = "Quit Floaterm",
        ft = "floaterm",
        mode = "t",
      },
      {
        "<leader>tb",
        "<cmd>FloatermNew --wintype=split --height=20<cr>",
        desc = "Toggle Bottom Terminal",
      },
      {
        "<leader>tr",
        "<cmd>FloatermNew --wintype=vsplit --width=80<cr>",
        desc = "Toggle Right Terminal",
      },
      {
        "<leader>tob",
        "<cmd>FloatermNew --cwd=<buffer><cr>",
        desc = "Open Floaterm in Current Buffer",
      },
    },
    config = function()
      vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
      -- 设置从 floaterm 打开文件的状态
      vim.g.floaterm_opener = "edit"

      local hl = vim.api.nvim_set_hl
      -- 设置 floaterm 失去焦点后的前景色
      hl(0, "floatermnc", { fg = "gray" })
    end,
  },
}
