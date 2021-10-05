local M = {}

M.config = function()
  local sidebar = require("sidebar-nvim")
  local opts = {
    open = false,
    -- datetime = {
    --   format = "%a %b %d, %H:%M",
    --   clocks = {
    --     { name = "local" }
    --   }
    -- },
    -- todos = {
    --   ignored_paths = {'~'}, -- ignore certain paths, this will prevent huge folders like $HOME to hog Neovim with TODO searching
    -- },
    docker = {
      use_podman = false,
      attach_shell = "/bin/sh",
      show_all = true, -- whether to run `docker ps` or `docker ps -a`
      interval = 5000, -- container update interval. The fetch command will run every 5s
    }
  }
  sidebar.setup(opts)
end
return M
