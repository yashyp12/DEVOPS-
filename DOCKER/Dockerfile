# # CREATING A DOCKER FILE - HELLO BANENR CONTAINER 

# # 1 . setting up BASE image 

# FROM ubuntu:latest

# # 2  Step 2 : Update packages 

# RUN apt-get update && apt-get install -y figlet

# # 3 Startup Commands

# CMD ["figlet","Hello Docker"]



FROM python:3.12-slim

WORKDIR /app

COPY app.py .

ENV APP_ENV=development

CMD ["python", "app.py"]





