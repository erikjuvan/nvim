-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Esc>", ":noh<CR>", {silent = true})
map("n", "<C-d>", "<C-d>zz", {silent = true})
map("n", "<C-u>", "<C-u>zz", {silent = true})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>p", builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
--vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>e", ":NERDTree<CR>", {})
vim.keymap.set("n", "<C-f>", ":NERDTreeToggle<CR>", {})
vim.keymap.set("n", "<A-l>", "<C-i>", {})
vim.keymap.set("n", "<A-h>", "<C-o>", {})
vim.keymap.set("n", "<A-Right>", "<C-i>", {})
vim.keymap.set("n", "<A-Left>", "<C-o>", {})

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>lua _htop_toggle()<CR>", {noremap = true, silent = true})
