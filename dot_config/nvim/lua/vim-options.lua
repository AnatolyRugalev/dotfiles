vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.opt.scrolloff = 10
vim.wo.relativenumber = true
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>s", ":wa<CR>", {})
vim.keymap.set("n", "<leader>qq", ":qa<CR>", {})

-- tab motions
vim.keymap.set("n", "<Tab>", ">>_", {})
vim.keymap.set("n", "<S-Tab>", "<<_", {})
vim.keymap.set("v", "<Tab>", ">gv", {})
vim.keymap.set("v", "<S-Tab>", "<gv", {})
vim.keymap.set("i", "<S-Tab>", "<C-D>", {})

-- clipboard
vim.keymap.set("v", "p", '"_dP', {})
vim.keymap.set("n", "X", '"_X', {})
vim.keymap.set("n", "x", '"_x', {})
vim.keymap.set("v", "x", '"_x', {})
vim.keymap.set("n", "C", '"_C', {})
vim.keymap.set("n", "c", '"_c', {})
vim.keymap.set("v", "c", '"_c', {})

-- navigation
vim.keymap.set("n", "gz", "<C-O>", {})
vim.keymap.set("n", "gf", "<C-I>", {})

vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { silent = true })

-- terminal
vim.keymap.set("n", "<C-_>", ":ToggleTerm<CR>")
vim.keymap.set("t", "<C-_>", "<C-\\><C-n><C-w>h:ToggleTerm<CR>")
vim.keymap.set("t", "<S-Tab>", "<C-\\><C-n><C-w>h", { silent = true })
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h:wincmd h<CR>", { silent = true })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>h:wincmd j<CR>", { silent = true })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>h:wincmd k<CR>", { silent = true })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>h:wincmd l<CR>", { silent = true })


