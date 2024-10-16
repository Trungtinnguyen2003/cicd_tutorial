FROM ubuntu:latest
MAINTAINER Trung Tin Nguyen "tinb2105689@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
COPY . /flask_app
WORKDIR /flask_app
RUN pip3 install --break-system-packages -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]


