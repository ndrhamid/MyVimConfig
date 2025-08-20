# My Vim Config

This repository contains my personal Vim configuration.

---

## Installation

### 1. Install vim-plug (Plugin Manager)
If you don’t have `vim-plug` installed yet, run the following command:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 2. Clone this repository
Clone the repository to your local machine

```bash
git clone https://github.com/ndrhamid/MyVimConfig.git
```

### 3. Copy the configuration file
Copy the provided vimrc to your home directory

```bash
cp myvimconfig/vimrc ~/.vimrc
```

### 4. Install the plugins
Open Vim and run:
```
:PlugInstall
```
This will install all plugins defined in the vimrc

## Install auto complate me(YCM plugin)
We assume your Linux is Ubuntu or similar.
### 1. Prerequisites
```bash
sudo apt update
sudo apt install build-essential cmake python3-dev
```
### 2. Compile YCM
```bash
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
```

**OR**

* Just enable YCM for (C-family + Python + TypeScript):
```bash
python3 install.py --clangd-completer --ts-completer
```
## Tips

### To update all plugins later, run
```
:PlugUpdate
```
