# extend-cocalc-docker
Examples of adding to the official CoCalc Docker image. Based on the Docker image described at [sagemathinc/cocalc-docker](https://github.com/sagemathinc/cocalc-docker).

To run these example images, follow the instructions at the [README.md file](https://github.com/sagemathinc/cocalc-docker/blob/master/README.md) at the above repo.

*Caveat utilitor.* These examples are experimental and not rigorously tested. Feedback is welcome. But use at your own risk!

## Example 1 - python3 Jupyter kernel

Add python3. Note that python3 is already installed in the Cocalc Docker image and can be used from the command line in a .term, but it is not available to Jupyter notebooks or Sage worksheets. The python3 kernel is needed; pip3 is added as nice-to-have.

Command `rsync` is also added to enable distributing handouts from a .course.

To use this image, you must first build it:

```
cd this/repo
docker build -t my-cocalc .
```

Then start it the same way the parent image is started, e.g.:
```
docker run --name=my-cocalc -d -v ~/cocalc:/projects -p 443:443 my-cocalc
```

For more information, see [sagemathinc/cocalc-docker](https://github.com/sagemathinc/cocalc-docker).


