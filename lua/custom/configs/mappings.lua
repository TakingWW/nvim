local wk = require("which-key")

wk.register({
    f = {
        name = "File",
        f = { "<cmd> Telescope find_files <CR>", "Find files" },
        s = { "<cmd> w <CR>", "Save File" },
        a = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
        h = { "<cmd> Telescope help_tags <CR>", "Help page" },
        o = { "<cmd> Telescope oldfiles <CR>", "Find old" },
    },
    b = {
        name = "Buffer",
        b = { "<cmd> Telescope buffers <CR>", "Find buffers" },
        c = { "<cmd> bd! <CR>", "Close" },
    },
    s = {
        name = "Search",
        w = { "<cmd> Telescope live_grep <CR>", "Live grep" },
        s = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
    },
    t = { "<cmd> Telescope themes <CR>", "Themes" },
    q = { "<cmd> q <CR>", "Quit" },
    ["]"] = { ":set paste<CR>m`o<Esc>``:set nopaste<CR>", "Insert line below" },
    ["["] = { ":set paste<CR>m`O<Esc>``:set nopaste<CR>", "Insert line above" },
    l = {
        name = "Lsp",
        e = { function() vim.diagnostic.open_float() end, "Diagnostic in line" },
        a = { function() vim.lsp.buf.code_action() end, "Code action" },
        d = { function() vim.lsp.buf.definition() end, "Definition" },
        s = { function() vim.lsp.buf.signature_help() end, "Signature help" },
        k = { function() vim.lsp.buf.hover() end, "Hover" },
        r = { function() require("nvchad_ui.renamer").open() end, "Rename" },
    },
}, { prefix = "<leader>" })
