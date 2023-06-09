---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = { "<cmd> TmuxNavigate<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigate<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigate<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigate<CR>", "window up" },
    ["<leader>gs"] = { "<cmd> Git<CR>", "Fugitive git status" },
    ["<leader>gm"] = { "<cmd> Gvdiffsplit!<CR>", "Fugitive git resolve condflict" },
    ["<leader>gl"] = { "<cmd> diffget //2<CR>", "Fugitive get left diff" },
    ["<leader>gr"] = { "<cmd> diffget //3<CR>", "Fugitive get right diff" },
    ["<leader>u"] = { "<cmd> UndoTreeToggle<CR>", "Toggle undo tree" },
  },
}

-- more keybinds!

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dc"] = {
      "<cmd> DapContinue <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug GO test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last test",
    },
  },
}

return M
