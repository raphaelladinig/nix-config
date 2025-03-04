require("blink.cmp").setup({
  keymap = { preset = "default" },

  appearance = {
    use_nvim_cmp_as_default = true,
    nerd_font_variant = "mono",
  },

  snippets = { preset = "luasnip" },

  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },

  completion = {
    menu = {
      draw = {
        columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 } },
      },
    },
  },

  fuzzy = { implementation = "lua" },
  -- fuzzy = { implementation = "prefer_rust_with_warning" },
})
