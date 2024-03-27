FROM continuumio/miniconda3:latest
RUN mkdir -p /backend
COPY ./backend/requirements.yml /backend/requirements.yml

RUN /opt/conda/bin/conda env create -f /backend/requirements.yml
ENV PATH /opt/conda/envs/backend/bin:$PATH
RUN echo "source activate backend"> ~/.bashrc

COPY ./backend /backend
# /opt/conda/envs/backend/bin
WORKDIR /backend