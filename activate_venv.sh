PYTHON=${PYTHON:=python3}
PIP=${PIP:=pip3}
REQUIREMENTS=requirements.txt

####################################
# Usage
### source activate_venv.sh
# or
### ./activate_venv.sh activate
# or
### ./activate_venv.sh setup_virtualenv
####################################

function setup_virtualenv {
    virtualenv -p $(which $PYTHON) --no-site-packages --distribute .env
}

function setup_virtualenv3 {
    $PYTHON -m venv .env
}

# Usage:
## source activate_venv.sh activate
function activate {
    source .env/bin/activate
}

function install {
    if [ -f $REQUIREMENTS ]; then
        $PIP install -r $REQUIREMENTS
    fi
}


# Bash magic to call functions defined here from the CLI e.g.
## ./activate_venv.sh activate
"$@"

if [ -z "$1" ]; then
    setup_virtualenv3
    activate
    install
fi
