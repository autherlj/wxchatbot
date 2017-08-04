FROM ubuntu:16.04
# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv  

ADD . /wxchatbot
WORKDIR /wxchatbot

RUN pip install requests
RUN pip install pyqrcode
RUN pip install pypng
RUN pip install Pillow
RUN pip install SpeechRecognition
RUN pip install pydub

CMD ["python", "bot.py"]
