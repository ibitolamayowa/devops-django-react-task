FROM python:3.10

# App Directory

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create a virtual environment

RUN python3 -m venv env

RUN . env/bin/activate

# Install Dependencies

COPY /requirements.txt /usr/src/app/

RUN pip install --upgrade pip && pip install -r requirements.txt 

# copy project
COPY . .

# Run the application

# Use an official Python runtime as a parent image
# FROM python:3.8

# # Allows docker to cache installed dependencies between builds
# COPY requirements.txt requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# # Mounts the application code to the image
# COPY . code
# WORKDIR /code

# EXPOSE 8000

# # runs the production server

# EXPOSE 8000

# #CMD ["python", "manage.py", "runserver"]
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver" "0.0.0.0:8000" ]