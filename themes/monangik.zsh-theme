# monangik zsh theme preview http://monangik.files.wordpress.com/2011/04/monangik-zsh-theme.png
# Theme with GIT and RVM info

if [ $UID -eq 0 ]; then CARETCOLOR="black"; else CARETCOLOR="white"; fi
	
PROMPT='$fg_bold[$CARETCOLOR]╔[$fg[cyan]%~$fg_bold[$CARETCOLOR]]\
 $fg_bold[$CARETCOLOR][$fg[red]$(~/.rvm/bin/rvm-prompt i v g p)$fg_bold[$CARETCOLOR]]\
 $(git_prompt_info) $(git_status_msg)
$fg_bold[$CARETCOLOR]╚$ $reset_color'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[$CARETCOLOR][$fg_bold[magenta]%}*"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[$CARETCOLOR]]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[cyan]%}ADDED "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[cyan]%}MODIFIED "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[cyan]%}DELETED "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[cyan]%}RENAMED "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[cyan]%}UNMERGED "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}UNTRACKED "

function git_status_msg() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$fg_bold[CARETCOLOR][$(git_prompt_status)$fg[yellow]$(git status | sed -n 2p)$fg_bold[CARETCOLOR]]" 		
}