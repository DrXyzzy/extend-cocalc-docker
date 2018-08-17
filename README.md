# extend-cocalc-docker
Examples of adding to the official CoCalc Docker image. Based on the Docker image described at [sagemathinc/cocalc-docker](https://github.com/sagemathinc/cocalc-docker).

To run these example images, follow the instructions at the [README.md file](https://github.com/sagemathinc/cocalc-docker/blob/master/README.md) at the above repo.

## example 1 - python3
Add python3. Note that python3 is already installed in the Cocalc Docker image and can be used from the command line in a .term, but it is not available to Jupyter notebooks or Sage worksheets. The python3 kernel is needed; pip3 is added as nice-to-have.

Command `rsync` is also added to enable distributing handouts from a .course.
