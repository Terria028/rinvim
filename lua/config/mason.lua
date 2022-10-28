local path = require("path").mason_path

require("mason").setup({
  install_root_dir = path,
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})
