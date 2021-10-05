-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Plugins
-- Display nodejs package info
lvim.builtin.which_key.mappings["n"] = { "<cmd>lua require('package-info').show()<cr>", "PackageInfo" }

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
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}

-- NVimTree
vim.api.nvim_set_keymap('n', '<Space>r', '<cmd>NvimTreeRefresh<cr>', { noremap = true })

-- Trouble
-- Lua
-- lvim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
--   {silent = true, noremap = true}
-- )
-- lvim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>",
--   {silent = true, noremap = true}
-- )
-- lvim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>",
--   {silent = true, noremap = true}
-- )
-- lvim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
--   {silent = true, noremap = true}
-- )
-- lvim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
--   {silent = true, noremap = true}
-- )
-- lvim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
--   {silent = true, noremap = true}
-- )

lvim.builtin.which_key.mappings.l.d = { "<cmd>TroubleToggle<cr>", "Diagnostics" }
lvim.builtin.which_key.mappings.l.R = { "<cmd>TroubleToggle lsp_references<cr>", "References" }
