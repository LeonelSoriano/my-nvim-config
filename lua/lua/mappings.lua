 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them!
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
-- OPEN TERMINALS --

map("n", "<C-x>", [[<Cmd> split term://bash | resize 10 <CR>]], opt) --  term bottom
map("n", "<C-t>t", [[<Cmd> tabnew | term <CR>]], opt) -- term newtab

-- COPY EVERYTHING --
map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

-- toggle numbers ---
map("n", "<leader>n", [[ <Cmd> set nu!<CR>]])

-- toggle truezen.nvim's ataraxis and minimalist mode
map("n", "<leader>z", [[ <Cmd> TZAtaraxis<CR>]], opt)
map("n", "<leader>m", [[ <Cmd> TZMinimalist<CR>]], opt)

map("n", "<C-s>", [[ <Cmd> w <CR>]], opt)
-- vim.cmd("inoremap jh <Esc>")

-- Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
map("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})

map("n", "<leader>n", ":tabprevious<CR>", {noremap = true, silent = true})
map("v", "<leader>n", ":tabprevious<CR>", {noremap = true, silent = true})
map("n", "<leader>m", ":tabnext<CR>", {noremap = true, silent = true})


map("n", "<leader>,", ":bp<CR>", {noremap = true, silent = true})
map("n", "<leader>.", ":bn<CR>", {noremap = true, silent = true})

map("n", "<C-l>", [[<Cmd>Lspsaga diagnostic_jump_next <CR>]], opt) -- term over right


map("n", "<C-n>", [[<Cmd>CHADopen  <CR>]], opt) -- term over right
-- map("n", "<C-n>", [[<Cmd>NvimTreeToggle  <CR>]], opt) -- term over right



map("n", "<A-Up>", [[ <Cmd> ObviousResizeUp<CR>]], opt)
map("n", "<A-Down>", [[ <Cmd> ObviousResizeDown<CR>]], opt)
map("n", "<A-Left>", [[ <Cmd> ObviousResizeLeft<CR>]], opt)
map("n", "<A-Right>", [[ <Cmd> ObviousResizeRight<CR>]], opt)



map("n", "<F9>", ":lua require'dap'.toggle_breakpoint()<CR>", {noremap = true, silent = true})
map("n", "<F5>", ":lua require'dap'.continue()<CR>", {noremap = true, silent = true})
map("n", "<F10>", ":lua require'dap'.step_over()<CR>", {noremap = true, silent = true})
map("n", "<F11>", ":lua require'dap'.step_into()<CR>", {noremap = true, silent = true})
map("n", "<F12>", ":lua require'dap'.step_out()<CR>", {noremap = true, silent = true})
map("n", "<F16>", "<Cmd>:lua require'dapui'.eval()<CR>", {noremap = true, silent = true})


vim.cmd([[imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])




