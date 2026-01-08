FROM python:3.9.25-alpine3.22

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

ENV DATABASE_URL="postgres://postgres:teste123@postgresql-db-1:5432/flags_db"

ENV PORT="8002"

ENV AUTH_SERVICE_URL="http://beautiful_heisenberg:8001"

CMD ["gunicorn", "--bind", "0.0.0.0:8002", "app:app"]
