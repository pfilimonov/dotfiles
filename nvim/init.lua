-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.colorscheme(vim.g.lazyvim_colorscheme)
vim.opt.termguicolors = true
