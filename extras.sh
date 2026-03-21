# Installing TV cli
wget https://github.com/alexpasmantier/television/releases/download/0.15.3/tv-0.15.3-x86_64-unknown-linux-musl.deb
dpkg -i tv-0.15.3-x86_64-unknown-linux-musl.deb
rm tv-0.15.3-x86_64-unknown-linux-musl.deb

# Installing VIM plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
