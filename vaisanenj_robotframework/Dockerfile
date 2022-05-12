FROM python:3.9-slim

#Create workdir
WORKDIR /Robot

#New volume where test cases are stored
VOLUME /Robot/Tests

#New volume where test results are stored
VOLUME /Robot/Results

#Copy python requirements.txt and start script to /Robot folder
COPY requirements.txt startRobot.sh ./

#Update and install necessary packages.
RUN apt-get update && \
    apt-get install -y wget unzip && \
    pip3 install --no-cache-dir -r requirements.txt

#Install Chrome 
RUN wget --no-verbose https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg --install google-chrome-stable_current_amd64.deb; apt-get --fix-broken --assume-yes install && \
    rm google-chrome-stable_current_amd64.deb && \
    webdrivermanager chrome

ENTRYPOINT ["./startRobot.sh"]