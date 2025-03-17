return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        -- I'll expand on this if I actually end up using this plugin        
    end
}
