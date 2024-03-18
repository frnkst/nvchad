---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
   
    ["<C-d>"] = { "<C-d>zz", "Scroll down and center" },
    ["<C-u>"] = { "<C-u>zz", "Scroll up and center" },
    ["n"] = { "nzzzv", "Search next and center"},
    ["N"] = { "Nzzzv", "Search back and center"},
    ["<leader>p"] = { "\"_dP", "Dont yank into paste register"},
  
  
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
