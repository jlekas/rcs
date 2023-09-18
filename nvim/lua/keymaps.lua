-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = false,       -- do not show message

}

-----------------
-- Insert mode --
-----------------
vim.keymap.set('i', 'jk', '<Esc>', opts)

-------------------
-- Cmd Line mode --
-------------------

-- vim.keymap.set('c', '<Esc>', ':noh<Esc>', opts)
-- vim.keymap.set('c', 'jk', ':noh<Esc>', opts)
-- Clear search
-- vim.keymap.set('c', '<Ret>', ':noh', opts)

-----------------
-- Normal mode --
-----------------

-- Gitsigns mappings
gs = package.loaded.gitsigns
vim.keymap.set('n', ']c', 'lua require"fugitive.builtin".]c<CR>')

-- Tagbar
vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>', opts)

-- Searching Files
vim.keymap.set('n', '<A-p>', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', opts)

-- ripgrep files, respects gitignore
vim.keymap.set('n', '<C-p>', ':lua require"telescope.builtin".live_grep()<CR>', opts)
vim.keymap.set('n', 'gr', ':lua require"telescope.builtin".lsp_references()<CR>', opts)
vim.keymap.set('n', 'gm', ':lua require"telescope.builtin".lsp_implementations()<CR>', opts)

-- debugging
-- vim.kepmap.set('n', '<F5>', ':lua require"dap".continue()<CR>', opts)
-- vim.kepmap.set('n', '<C-b>', ':lua require"dap".toggle_breakpoint()<CR>', opts)

-- lsp stuff
-- vim.keymap.set('n', 'gr', 'vim.lsp.buf.references()<CR>', opts)

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Clear search
vim.keymap.set('n', ' ', ':noh <CR>', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
