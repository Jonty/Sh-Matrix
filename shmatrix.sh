
shmatrix () {
    cd $*
    DIR=$PWD

    while [ "$DIR" != '/' ] 
    do
        
        ACTIVATE="$DIR/bin/activate"
        if [ -e $ACTIVATE ]; then

            if [ "$VIRTUAL_ENV" != '' ]; then
                if [ "$DIR" == "$VIRTUAL_ENV" ]; then
                    return 0
                else
                    deactivate
                fi
            fi

            source $ACTIVATE

        else
            DIR=`dirname $DIR`
        fi

    done

    if [ "$VIRTUAL_ENV" != '' ]; then
        deactivate
    fi
}

alias cd='shmatrix'
