FROM docker.io/bluedata/ubuntu18.04:1.2

RUN apt upgrade -y && apt update -y
RUN apt -y install python3-pip
RUN apt install curl -y

RUN mkdir -p /data/web-notes
COPY ./configscripts/appconfig.tgz /opt/configscripts/appconfig.tgz
COPY ./app /home/web-notes
WORKDIR /home/web-notes

RUN pip3 install -r requirements.txt

CMD python3 main.py
