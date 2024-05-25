require('gruvbox').setup {
  terminal_colors = false, -- add neovim terminal colors
  italic = {
    strings = false,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
}
vim.cmd.colorscheme 'gruvbox'
