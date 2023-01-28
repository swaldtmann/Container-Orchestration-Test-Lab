FROM ubuntu:22.04

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

RUN apt-get update -y
RUN apt-get install vim openssh-client python3 python3-pip -y

# Install pip requirements
COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

WORKDIR /ansible
COPY ../ansible /ansible

VOLUME [ "/ansible" ]

CMD ["bash"]
