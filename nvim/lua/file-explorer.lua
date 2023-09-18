-- disable netrw at startup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--empty setup
require("nvim-tree").setup({
    view = {
        width = 35,
    },
    filters = {
        dotfiles = true,
    },
})

require("todo-comments").setup()
