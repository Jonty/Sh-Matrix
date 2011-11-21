
shmatrix () {
    cd "$@"
    DIR=$(pwd -P)
    
    while [ "$DIR" != '/' ] 
    do
        ACTIVATE="$DIR/bin/activate"
        if [ -e "$ACTIVATE" ]; then
            
            # If we're in an env, but the deactivate command is missing
            # it means the shell reinitialised and we need to reactivate
            DEACTIVATE=$(type -t 'deactivate')

            if [ "$VIRTUAL_ENV" != '' -a "$DEACTIVATE" != '' ]; then
                if [ "$DIR" == "$VIRTUAL_ENV" ]; then
                    return 0
                else
                    deactivate
                fi
            fi

            source $ACTIVATE

        else
            DIR=`dirname "$DIR"`
        fi

    done

    if [ "$VIRTUAL_ENV" != '' ]; then
        deactivate
    fi
}

# Check we're not already in a virtualenv
shmatrix $(pwd -P)

alias cd='shmatrix'
