#!/usr/bin/zsh

prompt_preexec() {
    preexec_called=1
}

prompt_precmd() {
    if [ "$?" != 0 ] && [ "$preexec_called" = 1 ]
    then
        RPROMPT=$'%F{red}%?%f :('
	unset preexec_called
    else
	RPROMPT=$''
    fi

    print -P ''
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd prompt_precmd
add-zsh-hook preexec prompt_preexec

PROMPT=$'%F{white}%~ %B%F{blue}>%f%b '
