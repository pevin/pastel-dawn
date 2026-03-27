# Pastel Dawn

A warm light colorscheme for Neovim — minimal syntax highlighting with soft background washes for readability.

![Python](./assets/python.png)
![TypeScript](./assets/typescript.png)
![Rust](./assets/rust.png)

> Screenshots need to be captured manually with a clean Neovim config using only pastel-dawn.

---

## Design Philosophy

Pastel Dawn is inspired by three themes and one blog post:

- **[Catppuccin Latte](https://github.com/catppuccin/nvim)** — warm pastel palette
- **[Rosé Pine Dawn](https://github.com/rose-pine/neovim)** — soft creamy tones
- **[Alabaster](https://github.com/tonsky/vscode-theme-alabaster)** / [Tonsky's blog](https://tonsky.me/blog/syntax-highlighting/) — minimal, deliberate highlighting

**Core principles:**

1. **Most code is base text color.** Variables, function calls, and keywords are not rainbow-colored. Your code is 75% identifiers — coloring them all defeats the purpose.
2. **Only 4–5 semantic categories get color:** strings, numbers/constants, comments, definitions, and types.
3. **Background washes solve the light-theme contrast problem.** On light themes, saturated foreground colors become muddy. The fix: give colored text a soft pastel background wash. You get high contrast *and* clear color identity.
4. **Comments stand out, not hide.** Golden amber on a warm wash — if someone wrote a comment, you should read it.
5. **Punctuation and keywords are dimmed**, not colored. They're structural noise.

---

## Features

- Warm parchment background (`#faf6f0`)
- Background wash trick for all syntax colors
- Full Treesitter support (including Neovim 0.10+ `@markup.*` groups)
- Full LSP semantic token support (`@lsp.type.*`, `@lsp.typemod.*`)
- 29 plugin integrations, all toggleable
- Lualine theme included
- `on_colors` and `on_highlights` hooks for user customization
- `transparent` and `dim_inactive` support

---

## Installation

### lazy.nvim

```lua
{
  "pevin/pastel-dawn",
  lazy = false,
  priority = 1000,
  config = function()
    require("pastel-dawn").setup({
      -- your options here
    })
    vim.cmd.colorscheme("pastel-dawn")
  end,
}
```

### packer.nvim

```lua
use {
  "pevin/pastel-dawn",
  config = function()
    require("pastel-dawn").setup()
    vim.cmd.colorscheme("pastel-dawn")
  end,
}
```

### vim-plug

```vim
Plug 'pevin/pastel-dawn'
```

Then in your config:

```lua
require("pastel-dawn").setup()
vim.cmd.colorscheme("pastel-dawn")
```

### Manual

Clone the repo into your Neovim data directory:

```sh
git clone https://github.com/pevin/pastel-dawn ~/.local/share/nvim/site/pack/plugins/start/pastel-dawn
```

---

## Configuration

```lua
require("pastel-dawn").setup({
  -- Use transparent background (inherits terminal bg)
  transparent = false,

  -- Dim inactive windows slightly
  dim_inactive = true,

  -- Soft background washes behind colored syntax (the signature feature).
  -- Set to false for traditional fg-only coloring.
  bg_highlight = true,

  -- Background wash behind comments specifically
  comment_bg = true,

  -- Per-group style overrides
  styles = {
    comments  = { italic = true },
    keywords  = {},
    functions = {},
    variables = {},
    strings   = {},
    types     = {},
  },

  -- Disable integrations you don't use
  integrations = {
    telescope       = true,
    cmp             = true,
    blink_cmp       = true,
    neo_tree        = true,
    nvim_tree       = true,
    gitsigns        = true,
    indent_blankline = true,
    which_key       = true,
    lazy            = true,
    mason           = true,
    noice           = true,
    notify          = true,
    mini            = true,
    snacks          = true,
    dashboard       = true,
    bufferline      = true,
    flash           = true,
    trouble         = true,
    todo_comments   = true,
    render_markdown = true,
    fidget          = true,
    navic           = true,
    aerial          = true,
    fzf_lua         = true,
    oil             = true,
    diffview        = true,
    leap            = true,
    rainbow_delimiters = true,
  },

  -- Mutate the palette before highlights are applied
  on_colors = function(colors)
    -- colors.bg = "#ffffff"
  end,

  -- Override any highlight group
  on_highlights = function(highlights, colors)
    -- highlights.Comment = { fg = colors.gold }
  end,
})
```

---

## Plugin Integrations

| Plugin | Supported |
|--------|-----------|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | ✓ |
| LSP semantic tokens | ✓ |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | ✓ |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | ✓ |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | ✓ |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | ✓ |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | ✓ |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | ✓ |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | ✓ |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | ✓ |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | ✓ |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | ✓ |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | ✓ |
| [noice.nvim](https://github.com/folke/noice.nvim) | ✓ |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | ✓ |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) | ✓ |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | ✓ |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | ✓ |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | ✓ |
| [flash.nvim](https://github.com/folke/flash.nvim) | ✓ |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | ✓ |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | ✓ |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | ✓ |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | ✓ |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic) | ✓ |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim) | ✓ |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | ✓ |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | ✓ |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | ✓ |
| [leap.nvim](https://github.com/ggandor/leap.nvim) | ✓ |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | ✓ |

### Lualine

```lua
require("lualine").setup({
  options = { theme = "pastel-dawn" },
})
```

---

## Color Palette

| Role | Foreground | Background wash | Usage |
|------|-----------|-----------------|-------|
| Background | `#faf6f0` | — | Main editor bg (warm parchment) |
| Text | `#4c4f69` | — | Primary foreground |
| Dimmed | `#6c6f85` | — | Keywords, punctuation |
| Muted | `#9893a5` | — | Line numbers, comments (secondary) |
| Green | `#547c47` | `#e6f0e0` | Strings |
| Teal | `#2b7d84` | `#ddf0f0` | Numbers, booleans, constants |
| Gold | `#9a7032` | `#f5eddb` | Comments |
| Iris | `#7c5cad` | `#ede6f5` | Function/class definitions |
| Blue | `#3568b2` | `#e2ecf8` | Types |
| Rose | `#b4637a` | `#f5e4e8` | Preprocessor, imports, decorators |

---

## FAQ

**Why are keywords not colored?**
The Alabaster/Tonsky philosophy: keywords like `if`, `for`, `return` are structural punctuation, not semantic content. Dimming them lets the actual *meaning* of your code stand out.

**Why do syntax elements have colored backgrounds?**
On light themes, saturated foreground colors have poor contrast against a light background. Adding a soft pastel background wash behind colored text gives you both readability and color identity. See [Tonsky's blog post](https://tonsky.me/blog/syntax-highlighting/) for the full argument.

**How do I disable the background washes?**
```lua
require("pastel-dawn").setup({ bg_highlight = false })
```

**How do I make comments not italic?**
```lua
require("pastel-dawn").setup({ styles = { comments = {} } })
```

**How do I override a specific highlight group?**
```lua
require("pastel-dawn").setup({
  on_highlights = function(hl, colors)
    hl.Comment = { fg = colors.gold, italic = false }
  end,
})
```

**How do I access the palette in my own config?**
```lua
local colors = require("pastel-dawn.palette").get()
```

---

## Extras — Other Tools

Pastel Dawn ports for other tools live in the `extras/` directory and a companion VSCode repo.

### Ghostty

```sh
cp extras/ghostty/pastel-dawn ~/.config/ghostty/themes/pastel-dawn
```

Then add to your `~/.config/ghostty/config`:

```
theme = pastel-dawn
```

### tmux

Add to your `~/.tmux.conf`:

```sh
source-file /path/to/pastel-dawn/extras/tmux/pastel-dawn.conf
```

Then reload: `tmux source-file ~/.tmux.conf`

### VSCode / Cursor

See [pevin/pastel-dawn-vscode](https://github.com/pevin/pastel-dawn-vscode) — available on the VSCode Marketplace.

### Regenerating extras

After changing colors in `palette.lua`, update `palette.json` to match, then run:

```sh
make extras
```

---

## Contributing

1. Fork the repo and make your changes.
2. Test with `:colorscheme pastel-dawn` in a clean Neovim session.
3. Run `stylua lua/` before committing.
4. To add a new plugin integration, create `lua/pastel-dawn/groups/integrations/<plugin>.lua` exporting `M.setup(c, opts) -> table`, then add it to the `integrations` table in `lua/pastel-dawn/init.lua`.
5. Highlight group names can be found via `:Inspect` or the plugin's source code.

---

## Credits

- [Catppuccin](https://github.com/catppuccin/nvim) — palette inspiration and plugin integration structure
- [Rosé Pine](https://github.com/rose-pine/neovim) — soft tone aesthetic
- [Alabaster / Tonsky](https://github.com/tonsky/vscode-theme-alabaster) — minimal highlighting philosophy and the background wash trick

---

## License

MIT — see [LICENSE](./LICENSE)
