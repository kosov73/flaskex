FROM python:latest

RUN apt update

RUN apt install git

RUN apt install python3-pip -y

RUN git clone https://github.com/kosov73/flaskex.git && cd flaskex

RUN cd flaskex && pip install -r requirements.txt

CMD cd flaskex && python app.py

EXPOSE 5000
