#!/usr/bin/bash

# sudo apt-get install git python3-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl lsof
# # Not needed sudo pip install virtualenvwrapper

#
# Ansi color code variables
COL_RED="\e[0;91m"
COL_BLUE="\e[0;34m"
COL_GREEN="\e[0;92m"
COL_WHITE="\e[0;97m"
COL_RESET="\e[0m"

BOLD="\e[1m"

CUR_DIR=`pwd`
PYENV_FOLDER=`pwd`/.pyenv
PYTHON_VERSION=3.8.13

if [ -d "${PYENV_FOLDER}" ]; then
    printf "${COL_BLUE}pyenv installation: ${BOLD}${COL_GREEN} Already Exists${COL_RESET}\n"
else
    git clone https://github.com/pyenv/pyenv.git ${PYENV_FOLDER}
    # git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git ${PYENV_FOLDER}/plugins/pyenv-virtualenvwrapper
    # git clone https://github.com/pyenv/pyenv-virtualenv.git ${PYENV_FOLDER}/plugins/pyenv-virtualenv

    printf "\n${COL_BLUE}pyenv installation: ${BOLD}${COL_GREEN} Completed${COL_RESET}\n"
fi


PYENVRC=${CUR_DIR}/pyenvrc
rm -f ${PYENVRC}

printf "${COL_BLUE}Generating pyenvrc file:"

echo "export PYENV_ROOT=\"${PYENV_FOLDER}\"" >> ${PYENVRC}
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ${PYENVRC}
echo 'eval "$(pyenv init -)"' >> ${PYENVRC}
# echo 'pyenv virtualenvwrapper' >> ${PYENVRC}

printf "${BOLD}${COL_GREEN} Completed${COL_RESET}\n"

source ${PYENVRC}

pyenv install ${PYTHON_VERSION}
pyenv local ${PYTHON_VERSION}

pip install --upgrade pip
pip install poetry

exit 0


# poetry init
# ...
# ...
#
# poetry add django==3.2.14
# poetry add gunicorn==20.1.0
#
# poetry run django-admin startproject project .

# poetry run gunicorn -b 0.0.0.0:8000 --workers 2 --threads 4 project.wsgi:application


# poetry run python manage.py runserver  # For running in foreground


