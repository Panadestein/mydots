# My custom theme for ZSH, with a bit of LISP :)

PROMPT="%B(%B%{$fg[red]%}%n%{$reset_color%} %B. %{$fg[yellow]%}%1d%{$reset_color%}%B)%{$reset_color%} "
PROMPT+='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

