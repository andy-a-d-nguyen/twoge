FROM python:3.13-alpine
WORKDIR /app
COPY . .
ENV SQLALCHEMY_DATABASE_URI="postgres://postgres:postgres@andy-postgres.cx6agi0msez0.us-west-2.rds.amazonaws.com:5432/postgres"
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
