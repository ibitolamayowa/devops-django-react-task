<<<<<<< HEAD
FROM python:latest

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

EXPOSE 8000

CMD ["python", "manage.py", "runserver"]
#CMD [ "python", "manage.py", "runserver" "0.0.0.0:8000" ]
=======
# Import BaseImage
FROM python:3.10

RUN virtualenv env

RUN source env/bin/activate

# Install Depemdecies

COPY requirements.txt .

RUN pip install -r requirements.txt

# Run the application:

COPY manage.py .
CMD ["python", "manage.py"]
>>>>>>> 030accaa06abaa0c1ccaff0c4b91d228d3dd6b1e
