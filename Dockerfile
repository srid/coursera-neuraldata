FROM activestate/activepython:2.7

RUN apt-get -y update && apt-get -y install zip vim

# Install IPython via pip for now. PyPM repo has broken pyzmq.
RUN apt-get -y install gcc libzmq3-dev
RUN pypm install readline && pip install ipython[all]

# PyPM installs pre-compiled packages, thus faster than pip!
RUN pypm install numpy scipy

# Install matplotlib
RUN apt-get -y install libxss1 libxft2
RUN pypm install matplotlib
RUN python -c "import matplotlib.pylab"

ADD . /app
WORKDIR /app/my-work

# For IPython notebook web port
EXPOSE 8888
