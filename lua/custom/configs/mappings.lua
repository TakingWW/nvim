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
        w = { "<cmd> Telescope live_grep <CR>", "Live grep" },
        s = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
    },
    t = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
    q = { "<cmd> q <CR>", "Quit" },
    l = {
        name = "Lsp",
        e = { vim.diagnostic.open_float, "Diagnostic in line" },
        a = {
            function()
                vim.lsp.buf.code_action()
            end, "LSP code action" }
    }
}, { prefix = "<leader>" })
