# dotfiles

Copy all files except .git folder and this README.md file to user home folder

## nvim setup in Arch Linux:
Install packages
> pacman -S fakeroot xclip unzip gcc clang ripgrep fd wget (npm)

Install packer
> git clone https://aur.archlinux.org/nvim-packer-git
> cd nvim-packer-git
> makepkg -si

Open nvim
> nvim

Install plugins
> PackerInstall

Install LSPs
> MasonInstall clangd lua-language-server

Install Tree-sitter
> TSInstall c cpp python lua
