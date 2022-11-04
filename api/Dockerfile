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
