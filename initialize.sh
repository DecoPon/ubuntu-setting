# 必要なパッケージを入れておく
sudo apt -y update && sudo apt -y upgrade
sudo apt -y install git zsh ssh unzip

# preztoを導入
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
zsh ./prezto.sh
chsh -s /usr/bin/zsh
