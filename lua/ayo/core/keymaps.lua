vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
--general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "H", "^") -- move to the beginning of the line
keymap.set("n", "L", "$") -- move to the end of the line

keymap.set("v", "H", "^") -- move to the beginning of the line
keymap.set("v", "L", "$") -- move to the end of the line

-- increment number
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- make split windows equal height

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab

-- plugin keymaps

--Debugger
keymap.set("n", "<leader>dt", ":DapUiToggle<CR>", { noremap = true })
keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
keymap.set("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
keymap.set("n", "<leader>dr", ":lua require('dapui').open({reset=true})<CR>", { noremap = true })

--vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- auto-save
keymap.set("n", "<leader>n", ":ASToggle<CR>") --comment plugin keybings
--comment line: gcc
--comment multiple: gc + number + motion

-- toggle terminal
vim.api.nvim_set_keymap("n", "<C-t>", ":ToggleTerm<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>nt", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

--exits insert mode on terminal
keymap.set("t", "jk", [[<C-\><C-n>]])

-- moves the cursor from the terminal left down up right
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])

keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])
