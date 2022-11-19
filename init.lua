-- basic settings and options
require("options")

-- load all the plugins
require("load-plugins")

-- set up language servers
require("ls")

-- set up treesitter
require("treesitter-settings")

-- configure plugins
require("cmp-settings")
require("luaLine-settings")
require("formatter-settings")
require("telescope-settings")
require("whichkey-settings")
require("lspkind-settings")
require("nvim-tree-settings")
require("theme-settings")
require("matchtag-settings")
require("colorizer-settings")
require("bufferline-settings")
require("spectre-settings")
require("autopairs-settings")
require("Comment-settings")
require("presence-settings")
require("dashboard-settings")
require("undo-tree-settings")

-- keymappings
require("keymappings")

require("aerial").setup({
  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set("n", "<leader>at", "<cmd>AerialToggle!<CR>")


require('telescope').load_extension('aerial')
require('telescope').setup({
  extensions = {
    aerial = {
      -- Display symbols as <root>.<parent>.<symbol>
      show_nesting = {
        ['_'] = false, -- This key will be the default
        json = true,   -- You can set the option for specific filetypes
        yaml = true,
      }
    }
  }
})
--
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set("n", "<leader>af", "<cmd>Telescope aerial<CR>")

