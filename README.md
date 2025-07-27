# mudworld

![A screenshot of mudworld's source code using the colors](https://i.postimg.cc/TwCssH4C/Captura-de-tela-2025-07-27-114501.png)

This is a Neovim theme with a focus on warm colors. Inspired by gruvbox and the Emacs themes of Jonathan Blow and Casey Muratori.

## Installation
The theme is pretty barebones for now, so I don't have any options, you take what you get. This means you don't need to call `require('mudworld').setup()`

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'gabfelix/mudworld'
colorscheme mudworld
set background=dark
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  'gabfelix/mudworld',
  config = function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'mudworld'
  end
})
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'gabfelix/mudworld',
  config = function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'mudworld'
  end
}
```

### [mini.dep](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-dep.md)

```lua
now(function()
  add({ source = 'gabfelix/mudworld' })
  vim.o.background = 'dark'
  vim.cmd.colorscheme 'mudworld'
end)
```
