FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY . /code/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "portfolio/manage.py", "runserver", "0.0.0.0:8000"]

