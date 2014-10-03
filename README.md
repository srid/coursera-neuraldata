coursera-neuraldata
===================

This repo is for those familiar with [Docker](https://www.docker.com) and
currently taking the [Neural Data coursera
course](https://www.coursera.org/course/neuraldata). Instead of Anaconda, we
leverage Docker to create easily reproducible environments, and also
ActivePython and PyPM.


how to use
----------

Extract the desired problem sets from ./problem-sets under the ./my-work
directory. my-work is where you keep your solutions, and it is not committed to
git.

Next, install Docker (or boot2docker if you use Mac), and run `make`. This will
drop you in a bash shell with all the Python requisites installed, with my-work
being the current directory. You may edit the problems (extracted under my-work)
using the editor of your choice, and submit them directly from the docker shell.

This is still a work-in-progress as I work through the course.
