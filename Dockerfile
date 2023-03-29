FROM python:latest

RUN apt update

RUN apt install git python3-pip -y

RUN git clone https://github.com/kosov73/flaskex.git

WORKDIR /flaskex

RUN pip install -r requirements.txt

CMD ["python", "app.py"]

EXPOSE 5000
