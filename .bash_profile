PROMPT_DIRTRIM=4

PS1_PRE='\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]' # set window title

PS1_POST="$PS1_POST"'\[\033[0m\]'        # change to 'black'
PS1_POST="$PS1_POST"'\u@\h:'             # user@host:
PS1_POST="$PS1_POST"'\[\033[32m\]'       # change to green
PS1_POST="$PS1_POST"'\w'                 # current working directory
PS1_POST="$PS1_POST"'\[\033[0m\]'        # change 'black'
PS1_POST="$PS1_POST"'$ '                 # prompt: always $

GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="verbose"

PROMPT_COMMAND="__git_ps1 '${PS1_PRE}' '${PS1_POST}' '┌%s\n└'"
