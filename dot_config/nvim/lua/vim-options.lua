vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.wrap = false
vim.wo.relativenumber = true
vim.g.mapleader = " "

vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })
vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete word" })

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
vim.keymap.set("n", "gz", "<C-O>", { desc = "Jump back" })
vim.keymap.set("n", "gf", "<C-I>", { desc = "Jump forward" })
vim.keymap.set("n", "<Home>", "^", {})

-- terminal
vim.keymap.set("n", "<C-_>", ":ToggleTerm<CR>")
vim.keymap.set("t", "<C-_>", "<C-\\><C-n><C-w>h:ToggleTerm<CR>")
vim.keymap.set("t", "<S-Tab>", "<C-\\><C-n><C-w>h", { silent = true })
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h:wincmd h<CR>", { silent = true })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>h:wincmd j<CR>", { silent = true })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>h:wincmd k<CR>", { silent = true })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>h:wincmd l<CR>", { silent = true })

-- quickfix
vim.keymap.set("n", "<C-j>", ":cnext<CR>", { desc = "Next quickfix", silent = true })
vim.keymap.set("n", "<C-k>", ":cprev<CR>", { desc = "Prev quickfix", silent = true })
vim.keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open quickfix", silent = true })
vim.keymap.set("n", "<leader>qq", ":cclose<CR>", { desc = "Close quickfix", silent = true })

-- notifications
vim.keymap.set("n", "<leader>nq", ":Noice dismiss<CR>", { desc = "Dismiss notification", silent = true })

-- splits and windows
vim.keymap.set("n", "H", ":wincmd h<CR>", { silent = true, desc = "Window ←" })
vim.keymap.set("n", "J", ":wincmd j<CR>", { silent = true, desc = "Window ↓" })
vim.keymap.set("n", "K", ":wincmd k<CR>", { silent = true, desc = "Window ↑" })
vim.keymap.set("n", "L", ":wincmd l<CR>", { silent = true, desc = "Window →" })

vim.keymap.set("n", "<M-H>", ":vertical resize -2<CR>", { silent = true, desc = "Resize vertical -" })
vim.keymap.set("n", "<M-L>", ":vertical resize +2<CR>", { silent = true, desc = "Resize vertical +"})
vim.keymap.set("n", "<M-J>", ":resize -2<CR>", { silent = true, desc = "Resize horizontal -"})
vim.keymap.set("n", "<M-K>", ":resize +2<CR>", { silent = true, desc = "Resize horizontal +"})

vim.keymap.set("n", "<leader>wv", "<C-w><C-v>", { silent = true, desc = "Split vertical" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { silent = true, desc = "Split horizontal" })
vim.keymap.set("n", "<leader>wx", "<C-w>x", { silent = true, desc = "Swap windows" })
vim.keymap.set("n", "<leader>wq", ":q<CR>", { silent = true, desc = "Close window" })

vim.keymap.set("n", "<leader>s", ":wa<CR>", { desc = "Save all", silent = true })
vim.keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "Quit" })

