FROM python:3.7-slim-buster

RUN git clone https://github.com/radinsky/broadlink-http-rest
WORKDIR broadlink-http-rest

RUN pip3 install broadlink


CMD [ "python", "./server.py" ]
