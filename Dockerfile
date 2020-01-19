FROM ubuntu:latest

RUN apt update && apt install -y git  \
                                 python3.6  \
                                 python3-pip 
                                 


RUN pip3 install tensorflow
RUN pip3 install keras
RUN pip3 install pandas
RUN pip3 install biopython





# RUN conda config --add channels conda-forge && \
#     conda config --add channels bioconda && \
#     conda config --add channels default

# RUN conda install -c conda-forge biopython

# RUN conda install -c conda-forge tensorflow
# RUN conda install -c conda-forge keras
# RUN conda install -c conda-forge pandas



RUN git clone https://github.com/alyosama/virnet && \
    cd /virnet && pip3 install requirments.txt

ENV PATH /virnet:$PATH