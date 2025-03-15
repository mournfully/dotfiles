local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require("telescope").setup {
    -- [Results are not displayed when filtering · Issue #2667 · nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim/issues/2667) 
    defaults = { sorting_strategy = "ascending" }
}
