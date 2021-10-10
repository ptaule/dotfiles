-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = false
lvim.lint_on_save = true

lvim.colorscheme = "tokyonight"
-- vim.o.background = "light"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader>v"] = "<C-w>v"
lvim.keys.normal_mode["<leader>s"] = "<C-w>s"
lvim.keys.normal_mode["<CR>"] = "o<Esc>k"
lvim.keys.normal_mode["<C-Enter>"] = "O<Esc>"
lvim.keys.normal_mode[","] = ":silent noh<CR>"
lvim.keys.normal_mode["Q"] = "yyp!!sh<CR>"

lvim.keys.visual_mode["<leader>t"] = ":Tabularize /"
lvim.keys.visual_mode["//"] = "y/<C-R>\"<CR>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

vim.opt.backup = false -- creates a backup file
vim.opt.swapfile = false -- creates a swapfile

vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.completeopt = { "menuone","noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers

vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.smartcase = true -- smart case
vim.opt.gdefault = true
vim.opt.ignorecase = true -- ignore case in search patterns

vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)

vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = CACHE_PATH .. "/undo" -- set an undo directory
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion

vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.cursorline = true -- highlight the current line

vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines

vim.opt.smartindent = true -- make indenting smarter again
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 2 spaces for a tab
vim.opt.numberwidth = 4 -- set number column width to 4

vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8

lvim.autocommands.custom_groups = {
    {"Filetype", "julia", "setlocal commentstring=#\\ %s"},
    {"Filetype", "tex", "setlocal commentstring=%\\ %s"},
    {"BufWinEnter", "*.dat", "setlocal commentstring=#\\ %s"},
    {"BufWinEnter", "*.ini", "setlocal commentstring=#\\ %s"},
    {"BufWinEnter", "*.cfg", "setlocal commentstring=#\\ %s"},

    {"Filetype", "c", "nnoremap <leader>di ywoprintf(\"<C-r>\" = %i\n\", <C-r>\");<Esc>k^"},
    {"Filetype", "c", "nnoremap <leader>df ywoprintf(\"<C-r>\" = %f\n\", <C-r>\");<Esc>k^"},
    {"Filetype", "c", "nnoremap <leader>ds ywoprintf(\"<C-r>\" = %s\n\", <C-r>\");<Esc>k^"},
    {"Filetype", "cpp", "nnoremap <leader>do ywostd::cout << \"<C-r>\" = \" << <C-r>\" << std::endl;<Esc>k^"},
    {"Filetype", "cpp", "nnoremap <leader>de ywostd::cerr << \"<C-r>\" = \" << <C-r>\" << std::endl;<Esc>k^"},
    {"Filetype", "julia", "nnoremap <leader>d ywoprintln(\"<C-r>\" = $<C-r>\"\")jkk^"},

    {"Filetype", "c", "nnoremap <leader>m :wa<CR> :AsyncRun make -j<CR>"},
    {"Filetype", "cpp", "nnoremap <leader>m :wa<CR> :AsyncRun make -j<CR>"},
    {"Filetype", "julia", "nnoremap <leader>m :wa<CR> :AsyncRun julia --startup-file=no -e \"using DaemonMode; runargs()\" %<CR>"},
    {"Filetype", "python", "nnoremap <leader>m :wa<CR> :AsyncRun python %<CR>"},
    {"BufWinEnter", "*.ini", "nnoremap <leader>m :wa<CR> :AsyncRun ./class %<CR>"},
}

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   -- for input mode
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
--   -- for normal mode
--   lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.cpp.formatters = { { exe = "clang-format"} }
-- lvim.lang.cpp.linters = { { exe = "uncrustify"} }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--     args = {}
--   }
-- }

-- Additional Plugins
lvim.plugins = {
    {"folke/tokyonight.nvim"},
    {"tpope/vim-surround"},
    {"tpope/vim-repeat"},
    {"godlygeek/tabular"},
    {"skywind3000/asyncrun.vim"},
    {"unblevable/quick-scope"},
    {"ntpeters/vim-better-whitespace"}
}

-- vim.opt.relativenumber
-- vim.opt.tabstop=4
-- vim.opt.shiftwidth=4
-- vim.opt.expandtab
-- vim.opt.smarttab


-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
