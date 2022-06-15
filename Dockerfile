FROM docker.io/bluedata/ubuntu18.04:1.2

RUN apt upgrade -y && apt update -y
RUN apt -y install python3-pip

COPY ./app /home/web-notes
WORKDIR /home/web-notes

RUN pip3 install -r requirements.txt

ENTRYPOINT python3 main.py