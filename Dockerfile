FROM sagemathinc/cocalc
# add python3 for Jupyter notebooks and Sage worksheets to CoCalc Docker image
# at https://github.com/sagemathinc/cocalc-docker

MAINTAINER Hal Snyder

USER root

# python3-ipykernel is needed
# python3-pip is nice to have
RUN \
     apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
       python3-ipykernel \
       python3-pip

# copy config for python3 kernel
COPY kernels /usr/local/share/jupyter/kernels

# move aside sage environment python3
# needed for use of python3 from sagews
RUN \
     cd /usr/local/sage/local/bin && \
     mv python3 python3-bkb

CMD /root/run.py

EXPOSE 80 443
