#! /bin/zsh
curr_path="$PWD"
ln -s "${PWD}"/.zprezto "${HOME}"/.zprezto
cd "${HOME}"/.zprezto
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo "alias vi='mvim -v'\n" >> ${HOME}/.zshrc
