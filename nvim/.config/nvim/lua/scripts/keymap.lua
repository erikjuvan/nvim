-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<CR>", ":noh<CR><CR>", {silent = true})
map("n", "<leader>e", ":Ex<CR>", {silent = true})
map("n", "<leader>p", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ') })<CR>", {silent = true})
map("n", "<leader>f", ":lua require('telescope.builtin').find_files()<CR>", {silent = true})

