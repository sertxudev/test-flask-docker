FROM python:3.9-alpine

WORKDIR /app

EXPOSE 80

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

CMD ["python", "app.py"]
