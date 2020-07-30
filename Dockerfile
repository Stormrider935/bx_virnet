FROM ubuntu:bionic
RUN apt update && apt install -y procps git  \
    python3.6  \
    python3-pip 

RUN python3 -m pip install --upgrade pip

RUN pip3 install -U tensorflow==2.2.0 \
 keras pandas==1.1.0 \
 biopython==1.76 \
 scikit-learn==0.22.2.post1 \
 numpy==1.18.4 \
 pickle-mixin==1.0.2 pip

RUN pip3 install -v requests -i https://pypi.python.org/simple/


RUN git clone https://github.com/alyosama/virnet && cd virnet && git pull && \
    chmod 777 /virnet/*.py
#  && pip3 install -r requirments.txt
#  requirements does not work... some weird 404 error occuerd
ENV PATH /usr/bin/python3.6:/virnet/:$PATH

# working tag in wtp : 0.6.3