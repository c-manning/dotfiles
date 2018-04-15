#!/bin/bash 

dir=~/
dotfiles_dir=$( pwd )
old_dir=~/.old_dots
dotfile_list=('vim/.vimrc' 'tmux/.tmux.conf' 'bash/.bashrc' 'bash/.bash_profile' 'zsh/.zshconf')
install_programs=True

brew_install_list=('ctags' 'git' 'macvim' 'docker' 'cmake' 'fish' 'fzf' 'jq' 'thefuck' 'shellcheck' 'ripgrep' 'ranger' 'tmux' 'htop' 'node' 'watchman' 'nethogs' 'openssl' 'ntfs-3g' 'wget')
brew_cask_install_list=('google-chrome' 'dropbox' 'keycastr')

#git checkout tings
if [ -d $old_dir ]; then 
	mkdir $old_dir
fi

cd $dir

for dotfile in "${dotfile_list[@]}"; do
	mv $dir/$dotfile $old_dir/
	ln -s $dotfiles_dir/$dotfile $dir
done	


#somehow I changed my default vim to be macvim, need this in here too

if install_programs; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	for brew in "${brew_install_list[@]}"; do
		brew install $brew
	done
	for cask in "${brew_cask_install_list[@]}"; do
		brew cask install $cask
	done
fi
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions


cd $dotfiles_dir

