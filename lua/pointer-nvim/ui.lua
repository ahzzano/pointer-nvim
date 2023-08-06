local popup = require 'plenary.popup'

local markers = require 'pointer-nvim.markers'

local win_id
local width = 60
local height = 10
local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

local function close_menu()
    vim.api.nvim_win_close(win_id, true)
end

local function show_menu()
    win_id = popup.create(markers.get_all_marks(), {
        minwidth = 20,
        minheight = height,
        width = width,
        height = height,
        borderhighlight = "Directory",
        highlight = "Normal",
        border = true,
        borderchars = borderchars,
        title = "pointer-nvim",
    })
end


return {
    show_menu = show_menu
}
