#!/bin/bash 


#make all my files go into .symlinks and then take each of those it finds and drop the symlink bit and put a dot infront
# put plugins from vim in another file



dir=~/
dotfiles_dir=$( pwd )
old_dir=~/.old_dots
dotfile_list=('vim/.vimrc' 'tmux/.tmux.conf' 'bash/.bashrc' 'bash/.bash_profile' 'zsh/.zshrc' 'zsh/.profile')
install_programs=True

brew_install_list=('ctags' 'shpotify' 'zsh' 'mas' 'caskroom/cask/iterm2' 'diff-so-fancy' 'git' 'macvim --with-override-system-vim' 'docker' 'cmake' 'fish' 'fzf' 'jq' 'thefuck' 'shellcheck' 'ripgrep' 'ranger' 'tmux' 'htop' 'node' 'watchman' 'nethogs' 'openssl' 'ntfs-3g' 'wget', 'mycli', 'mosh')
brew_cask_install_list=('google-chrome' 'dropbox' 'keycastr' 'font-hack-nerd-font', 'ngrok')

mkdir ~/.undofiles

#git checkout tings
if [ -d $old_dir ]; then 
	mkdir $old_dir
fi

cd "$HOME/dotfiles/tmux"
git clone https://github.com/powerline/fonts
cd "powerline/fonts"
gem install tmuxinator
chmod +x install.sh
./install.sh
pip install flake8
mkdir -p ~/.config/
echo "[flake8]" >> ~/.config/flake8
echo "max-line-length = 120" >> ~/.config/flake8
cd $dir

for dotfile in "${dotfile_list[@]}"; do
	mv $dir/$dotfile $old_dir/
	#echo "source $dotfiles_dir/$dotfile" > ~/$dotfile
	ln -s $dotfiles_dir/$dotfile $dir
done	

ln -s $dotfiles_dir/config/.config $dir/.config
ln -s $dotfiles_dir/tmux/tmuxinator/ $dir/.config/tmuxinator

#somehow I changed my default vim to be macvim, need this in here too

if install_programs; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap caskroom/fonts
	for brew in "${brew_install_list[@]}"; do
		brew install $brew
	done
	for cask in "${brew_cask_install_list[@]}"; do
		brew cask install $cask
	done
fi
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

#install vim plugins for me
echo -ne '\n' | vim -c 'PlugInstall' -c 'qa!'
chsh -s /bin/zsh

sh $dir/dotfiles/scripts/mas.sh


