FROM qmcgaw/latexdevcontainer:latest-full

RUN export DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture amd64 \
    && apt-get update  \
    && apt-get instal libfontconfig1
    
RUN apt-get install -y aspell

RUN apt-get install python3 \
    && apt-get install python3-pip

RUN ln -s /usr/bin/python3.11 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip

RUN apt install pipenv

RUN apt install curl git-core gcc make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libssl-dev

RUN git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv

RUN echo ' export PYENV_ROOT="$HOME/.pyenv" >> ~/.zshrc
        export PATH="$PYENV_ROOT/bin:$PATH"

        if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init -)"
        fi
    ' >> ~/.zshrc

RUN pipenv install

WORKDIR /praise_resume