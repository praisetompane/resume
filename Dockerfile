FROM qmcgaw/latexdevcontainer:latest-full

WORKDIR /praise_resume

COPY . .

ARG DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture amd64 
RUN apt-get update  
RUN apt-get install libfontconfig1 -yqq
    
RUN apt-get install -y aspell

RUN apt-get install python3 -yqq && apt-get install python3-pip -yqq

RUN ln -s /usr/bin/python3.11 /usr/bin/python

RUN apt-get install pipenv  -yqq

RUN apt-get install curl git-core gcc make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libssl-dev -yqq

RUN git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
RUN echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
RUN echo 'if command -v pyenv 1>/dev/null 2>&1; then \
            eval "$(pyenv init -)" \
          fi' >> ~/.zshrc

RUN pipenv install

WORKDIR /praise_resume