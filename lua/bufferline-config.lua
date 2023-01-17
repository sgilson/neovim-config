require('string')

require('bufferline').setup {
    options = {
        numbers = "buffer_id", 
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            }
        },
        custom_filter = function(buf_number, buf_numbers)
            local bufname = vim.fn.bufname(buf_number) 
            -- Exclude terminal sessions
            if string.sub(bufname, 1, 7) == "term://" then
                return false
            end
            return true
        end,
    }
}
