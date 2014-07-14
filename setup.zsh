#! /bin/zsh
git submodule update --init --recursive
[ -z "$VUNDLE_URI" ] && VUNDLE_URI="https://github.com/gmarik/Vundle.vim.git"
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

mkdir -p "${HOME}/.vim/bundle/"
git clone $VUNDLE_URI "${HOME}/.vim/bundle/vundle"
vim +PluginInstall +qall
cd ~/.vim/bundle/tern_for_vim
npm install
echo "You need to install YouCompleteMe with ./install.sh --clang-completer\n\
  you may need to change python related CMake flags if running OSX 10.9\n"
