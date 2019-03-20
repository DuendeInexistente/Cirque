# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/cammera/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install


source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle command-not-found
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


antigen bundle zsh-users/zsh-syntax-highlighting
echo Loaded syntax!

# antigen bundle gretsky/auto-color-ls

antigen bundle zsh-users/zsh-autosuggestions
echo Loaded autosuggestions!

antigen bundle MikeDacre/careful_rm
echo Loaded careful_rm!

antigen bundle psprint/zsh-cmd-architect
echo Loaded cmd-architect!

antigen bundle Tarrasch/zsh-command-not-found
echo Loaded command-not-found!

antigen bundle zpm-zsh/colors
echo Loaded Colors!

antigen bundle rain1024/bookmark
echo Loaded bookmarks!

antigen theme KorvinSilver/blokkzh
echo Loaded theme!

antigen bundle hilverd/zsh-alias-suggester
echo Loaded alias suggestions!

antigen bundle MikeDacre/tmux-zsh-vim-titles
echo Loaded tmux-zsh titles!

antigen bundle psprint/zsh-navigation-tools
echo Loaded Navigation tools!
antigen bundle psprint/zsh-editing-workbench
echo Loaded editing workbench!
antigen bundle b4b4r07/enhancd

antigen apply

source ~/.antigen/bundles/b4b4r07/enhancd/init.sh
echo Loaded EnhanCD!

source ~/fzy-history.zsh


unalias please
