# syntax=docker/dockerfile:1

FROM python:3.12-slim AS base
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
WORKDIR /app

FROM base AS deps
COPY requirements.txt .
RUN pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

FROM base AS runtime
# copier les libs/bins installés en phase deps
COPY --from=deps /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.12/site-packages
COPY --from=deps /usr/local/bin/uvicorn /usr/local/bin/uvicorn
# on aura besoin de curl pour le HEALTHCHECK
USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl \
 && rm -rf /var/lib/apt/lists/*

COPY app.py .
COPY entrypoint.sh .
COPY log.ini .
# créer un user non-root
RUN adduser --disabled-password --gecos "" todo && chown -R todo:todo /app
USER todo

EXPOSE 8000
ENV PORT=8000 TODO_DB_PATH=/app/data/todo.db

# healthcheck (appel interne localhost)
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s \
  CMD curl -fsS http://127.0.0.1:${PORT}/health || exit 1

ENTRYPOINT ["./entrypoint.sh"]
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--log-config", "log.ini"]
