require("blink.cmp").setup({
  keymap = {
    preset = "super-tab",
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  snippets = {
    preset = "luasnip",
  },

  sources = {
    default = { "lsp", "avante", "path", "snippets", "buffer" },
    providers = {
      avante = {
        module = "blink-cmp-avante",
        name = "Avante",
      },
    },
  },

  completion = {
    menu = {
      draw = {
        columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 } },
      },
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 500,
    },
  },

  signature = {
    enabled = true,
  },

  cmdline = {
    enabled = true,
    keymap = {
      preset = "cmdline",
    },
  },

  fuzzy = {
    implementation = "prefer_rust_with_warning",
    prebuilt_binaries = {
      download = false,
    },
  },
})
