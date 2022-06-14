# syntax=docker/dockerfile:1
FROM python:3.8.10
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8082
# running server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8082"]