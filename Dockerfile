FROM python:3.8-slim

RUN apt-get update && apt-get install -y gcc libssl-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install  --no-cache-dir -r requirements.txt

COPY . .

CMD python3 manage.py migrate \
		&& uwsgi --http :8000 --module parrotsite.wsgi
