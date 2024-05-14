FROM python:3.12.3-slim

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python","manage.py", "runserver", "0.0.0.0:8000" ]  