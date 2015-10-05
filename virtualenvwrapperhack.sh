#!/bin/bash
export WORKON_HOME=$HOME/.virtualenvs;
export WORKSPACE="$HOME/workspace";
BASEDIR=$(dirname $BASH_SOURCE)
source $BASEDIR/virtualenvwrapper.sh;

function to_dir {
    if [ "$2" != "" ]; then
        mkdir -p "$WORKSPACE/$2";
        cd "$WORKSPACE/$2";
    else
        mkdir -p "$WORKSPACE/$1";
        cd "$WORKSPACE/$1";
    fi

}

function hackon {

    to_dir $1 $2;
    workon $1;
}

function _hackon {

    local digit;
    COMPREPLY=();
    digit=${COMP_WORDS[COMP_CWORD]};
    COMPREPLY=($(compgen -W "$(basename $(ls $WORKSPACE))" -- $digit));
    return 0
}
complete -F _hackon -o dirnames hackon;

function mkhack {
    mkvirtualenv $1;
    hackon $1 $2;
}
