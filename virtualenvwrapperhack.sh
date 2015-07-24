#!/bin/bash
export WORKON_HOME=$HOME/.virtualenvs;
export WORKSPACE="$HOME/workspace";
source /usr/local/bin/virtualenvwrapper.sh;

function to_dir {
    if [ "$2" != "" ]; then
        cd "$WORKSPACE/$2";
    else
        cd "$WORKSPACE/$1";
    fi

}

function hackon {
    
    workon $1;
    to_dir $1 $2;
}

function _hackon {

    local digit;
    COMPREPLY=();
    digit=${COMP_WORDS[COMP_CWORD]};
    COMPREPLY=($(compgen -W "$(basename $(compgen -d $WORKSPACE/))" -- $digit));
    return 0
}
complete -F _hackon -o dirnames hackon;

function mkhack {
    mkvirtualenv $1;
    hackon $1 $2;
}
