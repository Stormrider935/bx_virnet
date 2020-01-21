FROM ubuntu:latest
RUN apt update && apt install -y git  \
                                 python3.6  \
                                 python3-pip 
                                 

 
RUN pip3 install -U tensorflow
RUN pip3 install -U keras
RUN pip3 install -U pandas
RUN pip3 install -U biopython
RUN pip3 install -U scikit-learn
RUN pip3 install -U numpy
RUN pip3 install -U pickle-mixin
RUN pip3 install -U pip
RUN pip3 install -v requests -i https://pypi.python.org/simple/


RUN git clone https://github.com/alyosama/virnet && \
     cp -r /virnet/* / && \ 
     chmod 777 /*.py
    #  && pip3 install -r requirments.txt
#  requirements does not work... some weird 404 error occuerd
WORKDIR /virnet
ENV PATH /virnet:$PATH
ENV PATH /usr/bin/python3.6:$PATH