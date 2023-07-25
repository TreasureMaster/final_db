FROM postgres:14

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y unzip wget
RUN wget https://edu.postgrespro.ru/demo-small.zip
RUN unzip -nj demo-small.zip

# USER postgres

COPY *.sql /docker-entrypoint-initdb.d/