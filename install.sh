# create utilities folders
mkdir utils
mkdir utils/zsh
mkdir utils/z
touch utils/z/database

# Add Yarn Source
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# install NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
mv .nvm ~/utils/nvm

# update Dependencies Source
sudo apt update
sudo apt upgrade
sudo apt autoremove

# install Packages
sudo apt install curl neovim zsh tree git tmux fonts-powerline gnome-tweak-tool
sudo apt install --no-install-recommends yarn

# set zsh as default shell
chsh -s $(which zsh)


# ubuntu System Tweaks
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.mutter overlay-key ""
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super><Ctrl>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super><Ctrl>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super><Ctrl>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super><Ctrl>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super><Ctrl>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super><Ctrl>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Super><Ctrl>7']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Super><Ctrl>8']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Super><Ctrl>9']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Shift>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super><Shift>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super><Shift>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super><Shift>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Super><Shift>5']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Super><Shift>6']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Super><Shift>7']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Super><Shift>8']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Super><Shift>9']"

gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"
gsettings set org.gnome.desktop.wm.keybindings begin-move  "[]"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super><Ctrl>q']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down  "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last  "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left  "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right  "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up  "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down  "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last  "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left  "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right  "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up  "[]"
gsettings set org.gnome.desktop.wm.keybindings begin-resize "[]"

# Oh My Zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/sindresorhus/pure.git ~/utils/pure-prompt

sudo ln -s "$PWD/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
sudo ln -s "$PWD/async.zsh" /usr/local/share/zsh/site-functions/async

mv ~/.oh-my-zsh utils/oh-my-zsh

rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc 

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .


yarn global add typescript npm-check-updates now lerna

