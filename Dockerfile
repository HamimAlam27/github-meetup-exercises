# syntax=docker/dockerfile:1

FROM python:3.12-slim

WORKDIR /app

# Copy dependency manifest FIRST — this layer only rebuilds
# when requirements.txt changes, not on every code commit.
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy source code AFTER installing dependencies.
# This layer changes on every commit but doesn't bust
# the pip cache above it.
COPY . .

EXPOSE 8000

CMD ["python", "-m", "pytest", "tests/", "-v"]
