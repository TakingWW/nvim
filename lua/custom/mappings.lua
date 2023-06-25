local M = {}
M.custom = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  },
    n = {
        ["<S-TAB>"] = { "<cmd> bp <cr>", "Next buffer"},
        ["<TAB>"] = { "<cmd> bn <cr>", "Next buffer"},
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
      ["<leader>wa"] = "",
      ["<leader>wl"] = "",
      ["<leader>wr"] = "",
      ["<leader>ls"] = "",
      ["<leader>pt"] = "",
      ["<leader>ra"] = "",
      ["<leader>rn"] = "",
      ["<leader>th"] = "",
  }
}
return M
