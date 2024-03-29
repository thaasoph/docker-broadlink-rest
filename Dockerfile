FROM python:2.7-slim-buster

RUN apt-get update \
   && apt-get install -y git \
   && git clone https://github.com/radinsky/broadlink-http-rest \
   && pip install broadlink==0.10 configparser netaddr pycryptodome

WORKDIR broadlink-http-rest
RUN rm settings.ini

CMD [ "python", "./server.py" ]
