# Neovim Linux - WSL (Windows Subsytem for linux) 
Mayor información sobre instalación y configuración: [Joaquin Varela ](https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A)

## CONFIGURAR VIM COMO VSCODE:
### 1. Instalar nodejs12:
> * `sudo apt update` <br>
> * `sudo apt -y upgrade` <br>
> * `sudo apt update` <br>
> * `sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates` <br>
> * `curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -` <br>
> * `sudo apt -y install nodejs` <br>
> * `sudo apt -y  install gcc g++ make` <br>

### 2. Instalar neovim 0.6:
> * `sudo add-apt-repository ppa:neovim-ppa/unstable` <br>
> * `sudo apt-get update` <br>
> * `sudo apt-get install neovim` <br>

### 3. Configurar neovim:
> * `cd` <br>
> * `mkdir .config/` <br>
> * `cd .config/` <br>
> * `sudo apt install git` <br>
> * `git clone https://github.com/kurumii002/nvim-linux` <br>
> * `mv nvim-linux/ nvim` <br>
> * `sudo apt install ripgrep` <br>

### 4. Instalar vimplug y plugins:
> * `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
> * `nvim init.vim` <br>
> * `:PlugInstall` <br>

### 5. Instalar languages servers para COC:
- `:CocInstall coc-java` -> para sintaxis Java
- `:CocInstall coc-json` -> para sintaxis JSON
- `:CocInstall coc-pyright` -> para sintaxis Python 3
- `:CocInstall coc-python` -> para sintaxis Python
- `:CocInstall coc-tsserver` -> para sintaxis JavaScript/TypeScript
- `:CocInstall coc-html` -> para sintaxis HTML
- `:CocInstall coc-markdownlint` -> para sintaxis Markdown
- `:CocInstall coc-phpls` -> para sintaxis PHP