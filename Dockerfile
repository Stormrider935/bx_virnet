FROM ubuntu:bionic
RUN apt update && apt install -y procps git  \
    python3.6  \
    python3-pip 



RUN pip3 install -U tensorflow keras pandas biopython scikit-learn numpy pickle-mixin pip
RUN pip3 install -v requests -i https://pypi.python.org/simple/


RUN git clone https://github.com/alyosama/virnet && cd virnet && git pull && \
    chmod 777 /virnet/*.py
#  && pip3 install -r requirments.txt
#  requirements does not work... some weird 404 error occuerd
ENV PATH /usr/bin/python3.6:/virnet/:$PATH

# working tag in wtp : 0.6.3