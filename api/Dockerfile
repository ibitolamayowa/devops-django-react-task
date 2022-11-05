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