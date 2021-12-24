-- require all language server modules
require("ls.typescript")
require("ls.eslint")
require("ls.vue")
require("ls.css")
require("ls.html")
require("ls.luals")
require("ls.python")
require("ls.json")
require("ls.tailwind")
require("ls.yaml")
require("ls.prisma")
require("ls.emmet")

-- Customization and appearance -----------------------------------------
-- change gutter diagnostic symbols
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    source = "if_many",
    prefix = " ", -- Could be '●', '▎', 'x'
  },
  float = {
    source = "always",
  },
})
