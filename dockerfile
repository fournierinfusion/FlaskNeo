FROM ubuntu:latest
MAINTAINER: alex fournier "alexander fournier"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENV FLASK_APP=init.py
ENTRYPOINT ["python"]
CMD ["app.py"]