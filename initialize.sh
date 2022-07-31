# 必要なパッケージを入れておく
sudo apt -y update && sudo apt upgrade
sudo apt -y install git zsh ssh

# startup filesは "q" で一旦スキップ
zsh

# preztoを導入
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /usr/bin/zsh
