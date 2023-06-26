local M = {}
M.custom = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  },
    n = {
        ["<S-TAB>"] = { "<cmd> bp <cr>", "Next buffer"},
        ["<TAB>"] = { "<cmd> bn <cr>", "Next buffer"},
        ["x"] = { "V", "Visual select"},
    }
}
M.disabled = {
  n = {
      ["<leader>ff"] = "",
      ["<leader>fa"] = "",
      ["<leader>fb"] = "",
      ["<leader>fh"] = "",
      ["<leader>fm"] = "",
      ["<leader>fo"] = "",
      ["<leader>fz"] = "",
      ["<leader>fw"] = "",
      ["<leader>f"] = "",
      ["<leader>D"] = "",
      ["<leader>b"] = "",
      ["<leader>n"] = "",

      ["<leader>q"] = "",
      ["<leader>ca"] = "",
      ["<leader>cc"] = "",
      ["<leader>ch"] = "",
      ["<leader>cm"] = "",
      ["<leader>ma"] = "",
      ["<leader>gt"] = "",
      ["<leader>gb"] = "",
      ["<leader>ph"] = "",
      ["<leader>wa"] = "",
      ["<leader>wl"] = "",
      ["<leader>wr"] = "",
      ["<leader>ls"] = "",
      ["<leader>pt"] = "",
      ["<leader>ra"] = "",
      ["<leader>rn"] = "",
      ["<leader>th"] = "",
      ["<leader>sw"] = "",
      ["<leader>ss"] = "",
      ["<leader>rh"] = "",
      ["<leader>s"] = "",
      ["<leader>v"] = "",
      ["<leader>h"] = "",
  }
}
return M
