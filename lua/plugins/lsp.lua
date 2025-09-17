-- lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Angular Language Server (for templates + Angular specifics)
        angularls = {
          root_dir = require("lspconfig.util").root_pattern(
            "angular.json",
            "workspace.json",
            "project.json",
            "nx.json",
            "tsconfig.base.json",
            "tsconfig.json"
          ),
        },

        -- TypeScript/JavaScript LS (for TS navigation + definitions)
        tsserver = {
          root_dir = require("lspconfig.util").root_pattern(
            "nx.json",
            "workspace.json",
            "project.json",
            "package.json",
            "tsconfig.base.json",
            "tsconfig.json"
          ),
        },
      },
    },
  },
}
