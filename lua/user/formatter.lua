local M = {}

M.config = function()
  require('formatter').setup({
    logging = false,
    filetype = {
      ruby = {
        -- rubocop
        function()
          return {
            exe = "bundle exec rubocop",
            args = { '--auto-correct', '--stdin', '%:p', '2>/dev/null', '|', "awk 'f; /^====================$/{f=1}'"},
            stdin = true,
          }
        end
      },
      typescriptreact = {
        -- prettier
        function()
          return {
            exe = "prettierd",
            -- args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
      },
      javascript = {
          -- prettierd
         function()
            return {
              exe = "prettierd",
              args = {vim.api.nvim_buf_get_name(0)},
              stdin = true
            }
          end
      },
      -- other formatters ...
    }
  })
end

return M
