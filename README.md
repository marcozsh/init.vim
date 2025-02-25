

# This is a setup just for Windows


> [!IMPORTANT]
> Node is required for this setup.

1. install scoop 

``` PowerShell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

2. install neovim

``` PowerShell
scoop install main/neovim
```

### Next, we do the configuration

1. Go to `C:\Users\YOURUSER\AppData\Local\nvim` , if not exist, create it
2. Get the repository `git clone https://github.com/marcozsh/init.vim.git`
3. To install prettier with node `npm install -g prettier`
4. Install packer -> `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`
5. Go to `lua/marcozsh/packer.lua` and run `:PackerSync`
## For python
6. Instal pyright with `npm install -g pyright`
## For tailwindcss
7. Install tailwindcss with `npm install -g @tailwindcss/language-server`
## For typescript, tsx, etc
8. Install typescript-language-server with `npm install -g typescript typescript-language-server`

#### For live server 

1. Install live-server with npm

```PowerShell
npm install -g live-server
```

### Add Lazy Git for git Workflow

1. Add extras

```PowerShell
scoop bucket add extras
```
2. install lazygit

```
scoop install lazygit
```

### In case Live Grep(telescope) is not working properly

1. Install ripgrep

``` PowerShell
winget install BurntSushi.ripgrep.MSVC
```
or

``` PowerShell
scoop install ripgrep

```

### nvim-treesitter

It needs gcc to work

```
scoop install gcc
```
Then :TSInstall language

And there you go. Enjoy Nvim
