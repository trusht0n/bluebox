![logo](https://user-images.githubusercontent.com/31720261/156893394-a14a7fee-749c-4d02-8bfd-1a4cb2c479dd.png)

# Bluebox

A variation on the gruvbox theme with a shift towards a bluer background. Still comes with full support for treesitter!

## 🤔 Why?

I wanted to bridge the gap between the normal gruvbox themes and the blue tones of nord/tokyonight. I also wanted to make a theme that was easy on the eyes and had a good contrast between the colors.

<!-- ## 📸 Pretty pictures -->
<!---->
<!-- Font: **Jetbrains Mono patched with nerd fonts** -->
<!---->
<!-- Terminal: wezterm https://github.com/wez/wezterm -->
<!---->
<!-- #### 🌙 Lua -->
<!---->
<!-- ![lua-example](https://user-images.githubusercontent.com/31720261/147399333-5dc8d3dc-b382-4f13-a047-fb99298af028.png) -->
<!---->
<!-- #### 🐍 Python -->
<!---->
<!-- ![python-example](https://user-images.githubusercontent.com/31720261/147399558-bf00b60a-aea9-46f7-a823-fc760cda05be.png) -->
<!---->
<!-- #### ⚛️ React with typescript -->
<!---->
<!-- ![react-typescript-example](https://user-images.githubusercontent.com/31720261/147399581-66030749-3fa2-466d-aa8a-e79b6181185c.png) -->
<!---->
<!-- #### 🔍 Telescope -->
<!---->
<!-- _inspired by https://github.com/NvChad/NvChad (You have to enable it via config variable)_ -->
<!-- ![telescope-theme](https://user-images.githubusercontent.com/31720261/151669762-1470aa12-b6ff-47c1-a4e9-ec9b37e0eabe.png) -->
<!---->

## ⚙️ Installation

```vim
Plug 'trushton/bluebox', {'branch': 'master'}
...
colorscheme bluebox
```

## 🪛 Configuration

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with `colorscheme bluebox`

| Option               | Default     | Available options                                |
| -------------------- | ----------- | ------------------------------------------------ |
| background_color     | `medium`    | `medium`, `dark`                                 |
| transparent_mode     | `false`     | `false`, `true` - sets background colors to None |
| comment_style        | `italic`    | see `:h attr-list`                               |
| keyword_style        | `italic`    | see `:h attr-list`                               |
| string_style         | `nocombine` | see `:h attr-list`                               |
| function_style       | `bold`      | see `:h attr-list`                               |
| variable_style       | `NONE`      | see `:h attr-list`                               |
| highlights           | `{}`        | override highlights with your custom highlights  |
| color_overrides      | `{}`        | override color palette with your custom colors   |
| use_original_palette | `false`     | use the original gruvbox palette                 |

```lua
-- Example config in Lua
vim.g.bluebox_function_style = "NONE"
vim.g.bluebox_keyword_style = "italic"

-- Each highlight group must follow the structure:
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- See also :h highlight-guifg
-- Example:
vim.g.bluebox_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}

-- Enable telescope theme
vim.g.bluebox_telescope_theme = 1

-- Enable transparent mode
vim.g.bluebox_transparent_mode = 1

-- Load the colorscheme
vim.cmd[[colorscheme bluebox]]
```

If you enable the telescope theme, I recommend using it with this borderchars config:

```lua
telescope.setup({
  defaults = {
    ...
    borderchars = {
      prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
      results = { " " },
      preview = { " " },
    },
  }
})
```

```vim
" Example config in VimScript
let g:bluebox_function_style = "NONE"
let g:bluebox_keyword_style = "italic"

" Enable telescope theme
let g:bluebox_telescope_theme = 1

" Enable transparent mode
let g:bluebox_transparent_mode = 1

" Load the colorscheme
colorscheme bluebox
```

If you want access to the palette you have to do this:

```lua
local colors = require("bluebox.colors").config()
vim.g.bluebox_highlights = {Normal = {fg = colors.orange}}
```

## 🔌 Plugin support

- <https://github.com/mhinz/vim-startify>
- <https://github.com/nvim-treesitter/nvim-treesitter>
- <https://github.com/kyazdani42/nvim-tree.lua>
- <https://github.com/phaazon/hop.nvim>
- <https://github.com/lukas-reineke/indent-blankline.nvim>
- <https://github.com/hrsh7th/nvim-cmp>
- <https://github.com/nvim-telescope/telescope.nvim>
- <https://github.com/nvim-lualine/lualine.nvim>
- <https://github.com/kkharji/lspsaga.nvim>

#### enable Lualine

To enable `bluebox` theme for `Lualine`, simply specify it in your lualine settings:

```
require('lualine').setup {
    options = {
        -- ... your lualine config,
        theme = "bluebox",
        -- ... your lualine config,
    }
}
```

<!-- ## 🌈 Palette -->
<!---->
<!-- ![bluebox medium](extras/media/palettes/medium.svg) -->
<!-- ![bluebox intensities](extras/media/palettes/shades.svg) -->
<!---->
<!-- <details> -->
<!-- <summary><h3>📋 Colors</h3></summary> -->
<!---->
<!-- | **Color**                                                               | **Code** | **Name**      | -->
<!-- | ----------------------------------------------------------------------- | -------- | ------------- | -->
<!-- | <img src="https://www.colorhexa.com/ebdbb2.png" width="32" height="32"> | #ebdbb2  | foreground    | -->
<!-- | <img src="https://www.colorhexa.com/dedede.png" width="32" height="32"> | #dedede  | gray          | -->
<!-- | <img src="https://www.colorhexa.com/504945.png" width="32" height="32"> | #504945  | medium_gray   | -->
<!-- | <img src="https://www.colorhexa.com/665c54.png" width="32" height="32"> | #665c54  | comment       | -->
<!-- | <img src="https://www.colorhexa.com/e7d7ad.png" width="32" height="32"> | #e7d7ad  | milk          | -->
<!-- | <img src="https://www.colorhexa.com/cc241d.png" width="32" height="32"> | #cc241d  | error_red     | -->
<!-- | <img src="https://www.colorhexa.com/fb4934.png" width="32" height="32"> | #fb4934  | red           | -->
<!-- | <img src="https://www.colorhexa.com/d65d0e.png" width="32" height="32"> | #d65d0e  | orange        | -->
<!-- | <img src="https://www.colorhexa.com/fabd2f.png" width="32" height="32"> | #fabd2f  | bright_yellow | -->
<!-- | <img src="https://www.colorhexa.com/eebd35.png" width="32" height="32"> | #eebd35  | soft_yellow   | -->
<!-- | <img src="https://www.colorhexa.com/d4879c.png" width="32" height="32"> | #d4879c  | pink          | -->
<!-- | <img src="https://www.colorhexa.com/b16286.png" width="32" height="32"> | #b16286  | magenta       | -->
<!-- | <img src="https://www.colorhexa.com/98971a.png" width="32" height="32"> | #98971a  | soft_green    | -->
<!-- | <img src="https://www.colorhexa.com/689d6a.png" width="32" height="32"> | #689d6a  | forest_green  | -->
<!-- | <img src="https://www.colorhexa.com/8ec07c.png" width="32" height="32"> | #8ec07c  | clean_green   | -->
<!-- | <img src="https://www.colorhexa.com/458588.png" width="32" height="32"> | #458588  | blue_gray     | -->
<!-- | <img src="https://www.colorhexa.com/83a598.png" width="32" height="32"> | #83a598  | dark_gray     | -->
<!-- | <img src="https://www.colorhexa.com/7fa2ac.png" width="32" height="32"> | #7fa2ac  | light_blue    | -->
<!---->
<!-- </details> -->
<!-- <details> -->
<!-- <summary><h3>👶 Medium Intensity</h3></summary> -->
<!---->
<!-- ![bluebox medium](extras/media/palettes/medium.svg) -->
<!-- |**Color**|**Code**|**Name**| -->
<!-- |---|---|---| -->
<!-- |<img src="https://www.colorhexa.com/0d0e0f.png" width="32" height="32">|#0d0e0f|dark0| -->
<!-- |<img src="https://www.colorhexa.com/202020.png" width="32" height="32">|#202020|dark| -->
<!-- |<img src="https://www.colorhexa.com/242424.png" width="32" height="32">|#242424|background_dark| -->
<!-- |<img src="https://www.colorhexa.com/282828.png" width="32" height="32">|#282828|background| -->
<!-- |<img src="https://www.colorhexa.com/32302f.png" width="32" height="32">|#32302f|background_light| -->
<!---->
<!-- </details> -->
<!-- <details> -->
<!-- <summary><h3>🎱 Dark Intensity</h3></summary> -->
<!---->
<!-- ![bluebox dark](extras/media/palettes/dark.svg) -->
<!-- |**Color**|**Code**|**Name**| -->
<!-- |---|---|---| -->
<!-- |<img src="https://www.colorhexa.com/0d0e0f.png" width="32" height="32">|#0d0e0f|dark0| -->
<!-- |<img src="https://www.colorhexa.com/0d0e0f.png" width="32" height="32">|#0d0e0f|dark| -->
<!-- |<img src="https://www.colorhexa.com/171a1a.png" width="32" height="32">|#171a1a|background_dark| -->
<!-- |<img src="https://www.colorhexa.com/1d2021.png" width="32" height="32">|#1d2021|background| -->
<!-- |<img src="https://www.colorhexa.com/32302f.png" width="32" height="32">|#32302f|background_light| -->
<!---->
<!-- </details> -->
<!-- <details> -->
<!-- <summary><h3>🍦 Soft Intensity</h3></summary> -->
<!---->
<!-- ![bluebox soft](extras/media/palettes/soft.svg) -->
<!-- |**Color**|**Code**|**Name**| -->
<!-- |---|---|---| -->
<!-- |<img src="https://www.colorhexa.com/0d0e0f.png" width="32" height="32">|#0d0e0f|dark0| -->
<!-- |<img src="https://www.colorhexa.com/202020.png" width="32" height="32">|#202020|dark| -->
<!-- |<img src="https://www.colorhexa.com/282626.png" width="32" height="32">|#282626|background_dark| -->
<!-- |<img src="https://www.colorhexa.com/32302f.png" width="32" height="32">|#32302f|background| -->
<!-- |<img src="https://www.colorhexa.com/3c3a39.png" width="32" height="32">|#3c3a39|background_light| -->
<!---->
<!-- </details> -->
<!-- <details> -->
<!-- <summary><h3>🥿 Soft Flat Intensity</h3></summary> -->
<!---->
<!-- ![bluebox soft flat](extras/media/palettes/soft_flat.svg) -->
<!-- |**Color**|**Code**|**Name**| -->
<!-- |---|---|---| -->
<!-- |<img src="https://www.colorhexa.com/0d0e0f.png" width="32" height="32">|#0d0e0f|dark0| -->
<!-- |<img src="https://www.colorhexa.com/202020.png" width="32" height="32">|#202020|dark| -->
<!-- |<img src="https://www.colorhexa.com/32302f.png" width="32" height="32">|#32302f|background_dark| -->
<!-- |<img src="https://www.colorhexa.com/32302f.png" width="32" height="32">|#32302f|background| -->
<!-- |<img src="https://www.colorhexa.com/3c3a39.png" width="32" height="32">|#3c3a39|background_light| -->
<!---->
<!-- </details> -->
<!---->
<!-- ## 👽 Extras -->
<!---->
<!-- - **iTerm2** color theme found on [extras](extras/iterm2) -->
<!-- - **tmux** color themes found on [extras](extras/tmux) -->
<!-- - **bash/zsh** color themes found on [extras](extras/bash) -->
<!-- - **Windows Terminal** color themes found on [extras](extras/windows_terminal) -->
<!-- - **fzf** color theme found on [extras](extras/fzf) -->
<!-- - **XCode Colorscheme** color theme found on [adityadaniel/bluebox-xcode](https://github.com/adityadaniel/bluebox-xcode) -->
<!---->
<!-- #### add to Windows Terminal -->
<!---->
<!-- To add the bluebox themes to Windows Terminal run, -->
<!---->
<!-- ```bash -->
<!-- extras/windows_terminal/add_themes_to_windows_terminal.py $PATH_TO_WINDOWS_TERMINAL_SETTINGS_JSON -->
<!-- # Windows Terminal settings.json can be found at -->
<!-- # %LOCALAPPDATA%/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json -->
<!-- ``` -->
<!---->
<!-- #### use with fzf -->
<!---->
<!-- To use the fzf theme append the variable/string to your FZF_DEFAULT_OPTS variable -->
<!---->
<!-- ```bash -->
<!-- export FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS} ${FZF_THEME}" -->
<!-- #To use the fzf theme the environment variables used have to be defined. -->
<!-- #You can use the tmux or bash file to export them to your environment -->
<!-- ``` -->
<!---->
<!-- ## 👆 Acknowledgments -->
<!---->
<!-- - Shutout to @ThePrimeagen for the inspiration for the plugin name, Gruvbox baby! -->
<!-- - I based my structure on https://github.com/folke/tokyonight.nvim (and also copied some of it) -->
<!-- - The all father 👴 https://github.com/morhetz/gruvbox -->
<!---->
<!-- ## Other themes I've made -->
<!---->
<!-- The Matrix - https://github.com/luisiacc/the-matrix.nvim -->
