FROM python:3.9-slim

WORKDIR /app

COPY . /app/

RUN pip install setuptools==68.0.0
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENV SECRET_KEY="SUPERSECRECTKEY"
ENV STRIPE_TEST_PUBLIC_KEY="STRIPEKEY"
ENV STRIPE_TEST_SECRET_KEY="STRIPEKEY"

ENV PYTHONUNBUFFERED=1

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
