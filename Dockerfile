FROM python:3.10-slim

ARG PIP_REQUIREMENTS=requirements.txt

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip setuptools

RUN useradd -ms /bin/bash trydockerdj

USER trydockerdj

WORKDIR /home/trydockerdj

RUN python3 -v venv venv


COPY --chown=trydockerdj ./src/trydockerdj/requirements.txt /home/trydockerdj/requirements/
RUN ./venv/bin/pip3 install -r /home/trydockerdj/requirements/${PIP_REQUIREMENTS}

COPY --chown=trydockerdj ./src/trydockerdj /home/trydockerdj/