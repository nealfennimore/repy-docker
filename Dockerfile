FROM alpine:3.13.1

ENV ENV="/root/.profile"
ENV PYTHON_VERSION=2.7.18

RUN apk add --no-cache git bash g++ make zlib-dev bzip2-dev readline-dev openssl-dev sqlite-dev

SHELL ["/bin/bash", "-c"]

RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile && \
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.profile

RUN source ~/.profile && \
    pyenv install $PYTHON_VERSION && \
    pyenv global $PYTHON_VERSION

RUN git clone https://github.com/SeattleTestbed/repy_v2 && \
    mkdir -p ~/repy

RUN source ~/.profile && \
    cd repy_v2/scripts && \
    python initialize.py && \
    python build.py ~/repy

COPY ./docker-entrypoint.sh /usr/local/bin/

WORKDIR /root/repy
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["python", "repy.py"]