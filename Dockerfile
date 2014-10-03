FROM activestate/activepython:2.7

# PyPM installs pre-compiled packages, thus faster than pip!
RUN pypm install numpy scipy ipython readline

RUN apt-get -y update && apt-get -y install zip vim

ADD . /app
WORKDIR /app/my-work
