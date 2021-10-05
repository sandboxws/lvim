--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

require("defaults")
require("user.lsp")
require("user.overrides")
require("user.keymappings")
require("user.plugins")
require("user.treesitter")
require("user.lspkind")

vim.cmd([[
  " This is a comment
  vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
  nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
  nnoremap <silent>K :Lspsaga hover_doc<CR>
  nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
  nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

  " Node.js
  let $PATH = $HOME . '/.fnm/node-versions/v14.15.3/installation/bin:' . $PATH
  " vim.g.node_host_prog = $HOME . '/.fnm/node-versions/v14.15.3/installation/bin'
]])
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Plugins mappings
-- Package Info
-- Display latest versions as virtual text
-- vim.api.nvim_set_keymap("n", "<leader>ns", "<cmd>lua require('package-info').show()<cr>",
--   { silent = true, noremap = true }
-- )

-- Clear package info virtual text
-- vim.api.nvim_set_keymap("n", "<leader>nc", "<cmd>lua require('package-info').hide()<cr>",
--   { silent = true, noremap = true }
-- )

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
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--   }
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }


-- require("toggleterm").setup{
--   direction = "vertical"
-- }



-- nvim_lsp.cssls.setup({
--     cmd = { "vscode-css-language-server", "--stdio" },
-- })

-- enable null-ls integration (optional)
-- require("null-ls").config {}
-- require("lspconfig")["null-ls"].setup {}

-- make sure to only run this once!
-- nvim_lsp.cssls.setup{on_attach=require'completion'.on_attach}
-- local lsp_completion = require("completion")

--Enable completion
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- local general_on_attach = function(client, bufnr)
--   if client.resolved_capabilities.completion then
--     lsp_completion.on_attach(client, bufnr)
--   end
-- end

-- -- Setup basic lsp servers
-- for _, server in pairs({"html", "cssls"}) do
--   nvim_lsp[server].setup {
--     -- Add capabilities
--     capabilities = capabilities,
--     on_attach = general_on_attach
--   }
-- end

require("nvim_comment").setup({
  hook = function()
    require("ts_context_commentstring.internal").update_commentstring()
  end,
})

-- local lspconfig = require'lspconfig'
-- local configs = require'lspconfig/configs'    

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- if not lspconfig.emmet_ls then    
--   configs.emmet_ls = {    
--     default_config = {    
--       cmd = {'emmet-ls', '--stdio'};
--       filetypes = {'html', 'css'};
--       root_dir = function(fname)    
--         return vim.loop.cwd()
--       end;    
--       settings = {};    
--     };    
--   }    
-- end    
-- lspconfig.emmet_ls.setup{ capabilities = capabilities; }

-- local cmp = require'cmp'
--   cmp.setup({
--     snippet = {
--       expand = function(args)
--         vim.fn["vsnip#anonymous"](args.body)
--       end,
--     },
--     mapping = {
--       ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--     },
--     sources = {
--       { name = '...' },
--       ...
--     }
--   })


if vim.fn.has('nvim-0.5.1') == 1 then
  vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
  vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
  vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
  vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
  vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
  vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
  vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
  vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
else
  local bufnr = vim.api.nvim_buf_get_number(0)

  vim.lsp.handlers['textDocument/codeAction'] = function(_, _, actions)
    require('lsputil.codeAction').code_action_handler(nil, actions, nil, nil, nil)
  end

  vim.lsp.handlers['textDocument/references'] = function(_, _, result)
    require('lsputil.locations').references_handler(nil, result, { bufnr = bufnr }, nil)
  end

  vim.lsp.handlers['textDocument/definition'] = function(_, method, result)
    require('lsputil.locations').definition_handler(nil, result, { bufnr = bufnr, method = method }, nil)
  end

  vim.lsp.handlers['textDocument/declaration'] = function(_, method, result)
    require('lsputil.locations').declaration_handler(nil, result, { bufnr = bufnr, method = method }, nil)
  end

  vim.lsp.handlers['textDocument/typeDefinition'] = function(_, method, result)
    require('lsputil.locations').typeDefinition_handler(nil, result, { bufnr = bufnr, method = method }, nil)
  end

  vim.lsp.handlers['textDocument/implementation'] = function(_, method, result)
    require('lsputil.locations').implementation_handler(nil, result, { bufnr = bufnr, method = method }, nil)
  end

  vim.lsp.handlers['textDocument/documentSymbol'] = function(_, _, result, _, bufn)
    require('lsputil.symbols').document_handler(nil, result, { bufnr = bufn }, nil)
  end

  vim.lsp.handlers['textDocument/symbol'] = function(_, _, result, _, bufn)
    require('lsputil.symbols').workspace_handler(nil, result, { bufnr = bufn }, nil)
  end
end

local aerial = require'aerial'

local custom_attach = function(client)
  aerial.on_attach(client)

  -- Aerial does not set any mappings by default, so you'll want to set some up
  -- Toggle the aerial window with <leader>a
  vim.api.nvim_buf_set_keymap(0, 'n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
  -- Jump forwards/backwards with '{' and '}'
  vim.api.nvim_buf_set_keymap(0, 'n', '{', '<cmd>AerialPrev<CR>', {})
  vim.api.nvim_buf_set_keymap(0, 'n', '}', '<cmd>AerialNext<CR>', {})
  -- Jump up the tree with '[[' or ']]'
  vim.api.nvim_buf_set_keymap(0, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
  vim.api.nvim_buf_set_keymap(0, 'n', ']]', '<cmd>AerialNextUp<CR>', {})

  -- This is a great place to set up all your other LSP mappings
end

-- Set up your LSP clients here, using the custom on_attach method
require'lspconfig'.vimls.setup{
  on_attach = custom_attach,
}
