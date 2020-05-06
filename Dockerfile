FROM ubuntu:bionic
RUN apt update && apt install -y git  \
    python3.6  \
    python3-pip 



RUN pip3 install -U tensorflow keras pandas biopython scikit-learn numpy pickle-mixin pip
RUN pip3 install -v requests -i https://pypi.python.org/simple/

# git contains now absolute paths in python after issue written
RUN git clone https://github.com/alyosama/virnet && cd virnet && git pull \
    chmod 777 /virnet/*.py

ENV PATH /usr/bin/python3.6:/virnet/:$PATH
