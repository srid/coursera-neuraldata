FROM activestate/activepython:2.7

RUN apt-get -y update && apt-get -y install zip vim

# PyPM installs pre-compiled packages, thus faster than pip!
RUN pypm install numpy scipy readline

# Install IPython via pip for now. PyPM repo has broken pyzmq.
RUN apt-get -y install gcc libzmq3-dev
RUN pip install ipython[all]

ADD . /app
WORKDIR /app/my-work

# For IPython notebook web port
EXPOSE 8888
