FROM python:3.9
RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install mysql-connector-python pandas python-dotenv
RUN pip install flask-mysqldb
RUN pip3 install passlib

LABEL maintainer="samim ku patel <samim1000@gmail.com>" \
      version="1.0"
COPY . .
CMD ["python", "app.py"]
