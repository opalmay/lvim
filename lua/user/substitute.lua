require("substitute").setup({
  yank_substituted_text = true,
  on_substitute = require("yanky.integration").substitute(),
})
