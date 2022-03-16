# Start by importing the base image
FROM ubuntu:20.04

#Install python to container, on install python dans un container
RUN apt-get update && apt-get install python3 -y && apt install python3-pip -y 

#Copy python script & requirements.txt, on copie le fichier main et le fichier ayant les packages necessaires dans le container
COPY main.py requirements.txt ./

#Install from requirements.txt, on installe les packages dans le container
RUN python3 -m pip install -r requirements.txt

#On launch; Install python, install fastapi from requirements
CMD [ "python3", "-m", "uvicorn", "main:app", \
    "--host", "0.0.0.0" , "--port", "8080"]