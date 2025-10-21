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

### vim.pack
```lua
vim.pack.add({
	github 'gabfelix/mudworld.git',
})

require('mudworld').setup({
	italics = true,
	bold = true
})
vim.cmd.colorscheme 'mudworld'
```

# New
## Zed port
I'm a litle between editors right now, so I also ported mudworld to zed. It should look mostly the same. I can't promise that will always be the case.

![A screenshot of some Typescript code opened in Zed using the Mudworld theme](https://i.postimg.cc/Dybq7Yc8/Captura-de-tela-2025-10-21-101424.png)
