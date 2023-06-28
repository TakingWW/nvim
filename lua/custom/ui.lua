local fn = vim.fn
local M = {}
local C = {}

C.modes = {
    ["n"] = { "NORMAL", "St_NormalMode" },
    ["no"] = { "NORMAL (no)", "St_NormalMode" },
    ["nov"] = { "NORMAL (nov)", "St_NormalMode" },
    ["noV"] = { "NORMAL (noV)", "St_NormalMode" },
    ["noCTRL-V"] = { "NORMAL", "St_NormalMode" },
    ["niI"] = { "NORMAL i", "St_NormalMode" },
    ["niR"] = { "NORMAL r", "St_NormalMode" },
    ["niV"] = { "NORMAL v", "St_NormalMode" },
    ["nt"] = { "NTERMINAL", "St_NTerminalMode" },
    ["ntT"] = { "NTERMINAL (ntT)", "St_NTerminalMode" },

    ["v"] = { "VISUAL", "St_VisualMode" },
    ["vs"] = { "V-CHAR (Ctrl O)", "St_VisualMode" },
    ["V"] = { "V-LINE", "St_VisualMode" },
    ["Vs"] = { "V-LINE", "St_VisualMode" },
    [""] = { "V-BLOCK", "St_VisualMode" },

    ["i"] = { "INSERT", "St_InsertMode" },
    ["ic"] = { "INSERT (completion)", "St_InsertMode" },
    ["ix"] = { "INSERT completion", "St_InsertMode" },

    ["t"] = { "TERMINAL", "St_TerminalMode" },

    ["R"] = { "REPLACE", "St_ReplaceMode" },
    ["Rc"] = { "REPLACE (Rc)", "St_ReplaceMode" },
    ["Rx"] = { "REPLACEa (Rx)", "St_ReplaceMode" },
    ["Rv"] = { "V-REPLACE", "St_ReplaceMode" },
    ["Rvc"] = { "V-REPLACE (Rvc)", "St_ReplaceMode" },
    ["Rvx"] = { "V-REPLACE (Rvx)", "St_ReplaceMode" },

    ["s"] = { "SELECT", "St_SelectMode" },
    ["S"] = { "S-LINE", "St_SelectMode" },
    [""] = { "S-BLOCK", "St_SelectMode" },
    ["c"] = { "COMMAND", "St_CommandMode" },
    ["cv"] = { "COMMAND", "St_CommandMode" },
    ["ce"] = { "COMMAND", "St_CommandMode" },
    ["r"] = { "PROMPT", "St_ConfirmMode" },
    ["rm"] = { "MORE", "St_ConfirmMode" },
    ["r?"] = { "CONFIRM", "St_ConfirmMode" },
    ["x"] = { "CONFIRM", "St_ConfirmMode" },
    ["!"] = { "SHELL", "St_TerminalMode" },
}
M.custom = {
    theme = "gatekeeper",
    nvdash =  {
        load_on_startup = false,
    },
    statusline = {
        theme = "vscode_colored",
        overriden_modules = function()
            return {
                mode = function()
                    local m = vim.api.nvim_get_mode().mode
                    return "%#" .. C.modes[m][2] .. "#" .. " " .. C.modes[m][1] .. " "
                end,

                filetype = function()
                    return ""
                end,

                fileInfo = function()

                    local filename = (fn.expand "%" == "" and "Empty ") or fn.expand "%:t"
                    return "%#St_NTerminalMode# " .. filename .. " "
                end,

                git = function()
                    if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
                        return ""
                    end

                    return "  " .. vim.b.gitsigns_status_dict.head .. "  "
                end,

                gitchanges = function()
                    if not vim.b.gitsigns_head or vim.b.gitsigns_git_status or vim.o.columns < 120 then
                        return ""
                    end
                    local git_status = vim.b.gitsigns_status_dict

                    local added = (git_status.added and git_status.added ~= 0) and ("%#St_lspInfo#  " .. git_status.added .. " ") or ""
                    local changed = (git_status.changed and git_status.changed ~= 0)
                    and ("%#St_lspWarning#  " .. git_status.changed .. " ")
                    or ""
                    local removed = (git_status.removed and git_status.removed ~= 0)
                    and ("%#St_lspError#  " .. git_status.removed .. " ")
                    or ""

                    return (added .. changed .. removed) ~= "" and (added .. changed .. removed ) or ""
                end,

                file_encoding = function()
                    return "a"
                end,

                cwd = function()
                    return ""
                end,
            }
        end,
    },
    tabufline = {
        enabled = false
    }
}
return M.custom
