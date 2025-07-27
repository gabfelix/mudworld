# mudworld

![A screenshot of mudworld's source code using the colors](https://i.postimg.cc/6qL5vKjY/image.png)

This is a Neovim theme with a focus on warm colors. Inspired by gruvbox and the Emacs themes of Jonathan Blow and Casey Muratori.

## Installation
### [mini.dep](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-dep.md)

```lua
now(function()
  add({ source = 'gabfelix/mudworld' })
  require('mudworld').setup({
    italics = true,
    bold = true
  })
  vim.cmd.colorscheme 'mudworld'
end)
```
