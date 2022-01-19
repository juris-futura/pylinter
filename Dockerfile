FROM python:3.10-slim

LABEL org.opencontainers.image.url="https://github.com/Exodus/pylinter"
LABEL org.opencontainers.image.authors="alvaradoma@gmail.com"
LABEL org.opencontainers.image.title="Python code quality checker with Black"

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip && \
    pip3 install --no-cache-dir pipenv

COPY Pipfile Pipfile.lock ./
RUN pipenv install --system --deploy

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh