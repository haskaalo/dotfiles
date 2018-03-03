# Custom amuse zsh theme without timestamp and more ubuntu like
PROMPT='
$fg_bold[green]%}%n@%m%{$reset_color:$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)$ '

# Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
