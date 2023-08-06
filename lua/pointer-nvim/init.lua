local ui = require 'pointer-nvim.ui'
local markers = require 'pointer-nvim.markers'

local function setup_plugin()
    vim.keymap.set('n', '<C-e>', ui.show_menu, {})
    vim.keymap.set('n', '<leader>ma', markers.add_current_file, {})
    vim.keymap.set('n', '<leader>m1', markers.move_to_command(1), {})
end

local M = {
    setup = setup_plugin,
    show_menu = ui.show_menu
}

return M
