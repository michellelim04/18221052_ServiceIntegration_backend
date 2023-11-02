FROM python:3.10-alpine3.17

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . /app

CMD ["uvicorn", "app:app", "--reload", "--host", "0.0.0.0", "--port", "80"]
