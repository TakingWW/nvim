local wk = require("which-key")

wk.register({
    f = {
        name = "File",
        f = { "<cmd> Telescope find_files <CR>", "Find files" },
        s = { "<cmd> w <CR>", "Save File" },
        a = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
        w = { "<cmd> Telescope live_grep <CR>", "Live grep" },
        h = { "<cmd> Telescope help_tags <CR>", "Help page" },
        o = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
        z = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
    },
    b = {
        name = "Buffer",
        b = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    },
    l = {
        name = "Lsp",
        a = {
            function()
                vim.lsp.buf.code_action()
            end, "LSP code action" }
    }
}, { prefix = "<leader>" })
