mkdir utils
mkdir utils/zsh
mkdir utils/oh-my-zsh
mkdir utils/nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install --no-install-recommends yarn

gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false

sudo apt install gnome-shell-extension-dash-to-panel
# Disable Overview when pressing super key
gsettings set org.gnome.mutter overlay-key ""

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sudo apt install neovim zsh tree git tmux fonts-powerline

git clone git@github.com:xiaoyu-tamu/dotfiles.git ~/.dotfiles

git clone https://github.com/sindresorhus/pure.git ~/utils/pure-prompt
cd ~/utils/pure-prompt
sudo ln -s "$PWD/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
sudo ln -s "$PWD/async.zsh" /usr/local/share/zsh/site-functions/async

chsh -s $(which zsh)
