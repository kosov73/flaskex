FROM python:latest

RUN apt update \
    && apt install git python3-pip -y \
    && git clone https://github.com/kosov73/flaskex.git

WORKDIR /flaskex

RUN pip install -r requirements.txt

CMD ["python", "app.py"]

EXPOSE 5000
