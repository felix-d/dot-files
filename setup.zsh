#! /bin/zsh
[ -z "$VUNDLE_URI" ] && VUNDLE_URI="https://github.com/gmarik/vundle.git"

git_branch='3.0'
files=(".vim" ".vimrc" ".tmux.conf" ".zprezto")
for file in "${files[@]}"; do
  ln -Fs "${PWD}/${file}" "${HOME}/${file}"
done
cd "${HOME}"/.zprezto
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -Fs "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo "alias vim='mvim -v'\n" >> ${HOME}/.zshrc

mkdir -p "{$HOME}/.vim/bundle/"
git clone $VUNDLE_URI "$HOME/.vim/bundle/Vundle.git"
vim +PluginInstall +qall
