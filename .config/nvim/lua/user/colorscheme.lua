--vim.cmd("colorscheme gruvbox")
--vim.cmd("colorscheme tokyonight") -- this one is also very nice
vim.cmd("colorscheme codedark")

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

local hl = function(thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end

--hl("SignColumn", {
--  bg = "none",
--})

--hl("ColorColumn", {
--  ctermbg = 0,
--  bg = "#2B79A0",
--})

--hl("CursorLineNR", {
--  bg = "None"
--})

--hl("Normal", {
--  bg = "none"
--})

--hl("LineNr", {
--  fg = "#5eacd3"
--})

--hl("netrwDir", {
--  fg = "#5eacd3"
--})
