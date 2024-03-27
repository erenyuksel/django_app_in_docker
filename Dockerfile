FROM continuumio/miniconda3:latest
RUN mkdir -p /backend
COPY ./backend/requirements.yml /backend/requirements.yml

RUN /opt/conda/bin/conda env create -f /backend/requirements.yml
ENV PATH /opt/conda/envs/backend/bin:$PATH
# Prevents the generation of Pycharm that you might have trouble getting rid of, especially on the server.
ENV PYTHONDONTWRITEBYTECODE=1
RUN echo "source activate backend"> ~/.bashrc

COPY ./backend /backend
# /opt/conda/envs/backend/bin
WORKDIR /backend