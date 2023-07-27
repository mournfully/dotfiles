-- netrw file manager
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected text with shift+J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- leave cursor alone when...
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- highlight and paste without overwriting clipboard buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without overwriting current clipboard buffer
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- yank into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- save vertical edits even  <C-c>
vim.keymap.set("i", "<C-c>", "<Esc>")

--[[ TODO: Figure out what these keymaps are supposed to do
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- keybinding: <C-a-L> for tmux previous session
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fix navigation?
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
]]--

-- menu for replacing current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make file executable from within nvim
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- shout out current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

