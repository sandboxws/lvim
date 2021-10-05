-- Builtins
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.cmp.snippet = false
lvim.builtin.telescope.defaults.file_ignore_patterns = {
  ".git",
  ".history",
  ".local-history",
  "deps",
  "logs",
  "node_modules",
  "tmp",
  "_build",
}

-- Treesitter
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.playground.enable = true

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.dashboard.custom_header = {
"                                  █████ █████                                                 ",
"                                 ░░███ ░░███                                                  ",
"  █████   ██████   ████████    ███████  ░███████   ██████  █████ █████ █████ ███ █████  █████ ",
" ███░░   ░░░░░███ ░░███░░███  ███░░███  ░███░░███ ███░░███░░███ ░░███ ░░███ ░███░░███  ███░░  ",
"░░█████   ███████  ░███ ░███ ░███ ░███  ░███ ░███░███ ░███ ░░░█████░   ░███ ░███ ░███ ░░█████ ",
" ░░░░███ ███░░███  ░███ ░███ ░███ ░███  ░███ ░███░███ ░███  ███░░░███  ░░███████████   ░░░░███",
" ██████ ░░████████ ████ █████░░████████ ████████ ░░██████  █████ █████  ░░████░████    ██████ ",
"░░░░░░   ░░░░░░░░ ░░░░ ░░░░░  ░░░░░░░░ ░░░░░░░░   ░░░░░░  ░░░░░ ░░░░░    ░░░░ ░░░░    ░░░░░░  ",
"                                                                                              ",
}
-- vim.g.dashboard_custom_shortcut = {
--   ['last_session'] = 'SPC s l',
--   ['find_history']       = 'SPC f h',
--   ['find_file']          = 'SPC f f',
--   ['new_file']           = 'SPC c n',
--   ['change_colorscheme'] = 'SPC t c',
--   ['find_word']          = 'SPC f a',
--   ['book_marks']         = 'SPC f b',
-- }

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.lsp.diagnostics.virtual_text = true
