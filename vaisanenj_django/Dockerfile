#Base image to use
FROM python:3.10-slim

#Expose one port for django website
EXPOSE 8000

#Copy python requirements and startserver script files
COPY requirements.txt startserver.sh ./

#Install packages from requirements file
RUN pip install -r requirements.txt

#Change user rights for startserver file
RUN chmod 777 startserver.sh

#Run startserver file
CMD [ "./startserver.sh" ]
