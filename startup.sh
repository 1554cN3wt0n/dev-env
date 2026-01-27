# === Essential CLI Tools ===
apk add git curl make cmake
apk add htop btop bat exa procs ripgrep fzf
apk add bash zsh vim tmux fastfetch
apk add fontconfig readline-dev

# === Networking Tools ===
apk add busybox-extras ngrep netcat-openbsd socat

# === Install Oh My Zsh ===
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# === Programming Tools (Assembly, C/C++, Debuggers) ===
apk add gcc clang clang-dev nasm gdb
apk add musl-dev linux-headers
apk add python3 py3-pip python3-dev

curl -fsSL https://bun.sh/install | bash

wget https://go.dev/dl/go1.25.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.25.3.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.zshrc
rm go1.25.3.linux-amd64.tar.gz
source ~/.zshrc

curl -L -R -O https://www.lua.org/ftp/lua-5.1.5.tar.gz
tar zxf lua-5.1.5.tar.gz
cd lua-5.1.5 && make linux && make install
cd $HOME

wget https://luarocks.github.io/luarocks/releases/luarocks-3.13.0.tar.gz
tar xzf luarocks-3.13.0.tar.gz
cd luarocks-3.13.0 && ./configure && make && make install
cd $HOME

# apk add kubectl docker # (Optional)

# === Build and install Neovim
apk add gettext-dev
git clone --depth 1 https://github.com/neovim/neovim.git /tmp/neovim
cd /tmp/neovim && make && make install
cd $HOME

# === Clone LazyVim starter config ===
mkdir -p $HOME/.config/nvim
git clone --depth 1 https://github.com/LazyVim/starter.git $HOME/.config/nvim

# === Install Python requirements ===
pip3 install -r requirements.txt --break-system-packages

# === Install Bun packages ===
bun install -g prettier

# === DevOps tools ===
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mkdir -p ~/.local/bin
mv kubectl ~/.local/bin
