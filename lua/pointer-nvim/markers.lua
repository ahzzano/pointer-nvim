local marks = {

}

function add_mark(path)
    table.insert(marks, path)
end

function add_current_mark()
    add_mark(vim.api.nvim_buf_get_name(0))
end

function get_all_marks()
    return marks
end

function move_to(mark_index)
    vim.cmd.edit(marks[mark_index])
end

function move_to_command(mark_index)
    local function move_to()
        vim.cmd.edit(marks[mark_index])
    end

    return move_to
end

return {
    add_mark = add_mark,
    add_current_file = add_current_mark,
    get_all_marks = get_all_marks,
    move_to = move_to,
    move_to_command = move_to_command,

}
