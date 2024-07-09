# NvChad based Neovim config

## Installation

`git clone git@github.com:MGhasemi8156/nvim-config.git ~/.config/nvim --depth 1`

## Requirements
- `neovim>=v0.9.0`
- `git`
- NerdFonts(Hack Nerd Font is prefered)
### python
- pyright: `pip install pyright`

### go
- gopls: `go install golang.org/x/tools/gopls@latest`
- delve: `go install github.com/go-delve/delve/cmd/dlv@latest`

### C
- clagnd: `apt install clangd`

## Notes
- For kernel module development, default `compile_commands.json` of **clangd** does not works properly. Using [this script](https://github.com/amezin/vscode-linux-kernel/blob/master/generate_compdb.py) it is possible to have LSP in kernel module development. 
