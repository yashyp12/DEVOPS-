#multi stage build docker file

FROM python:3.12 AS builder

WORKDIR /app

COPY requirements.txt
RUN pip install requirements.txt

# final stage 
FROM python:3.12-slim
WORKDIR /app
COPY --from=builder /install/usr/local
COPY app.py . 

CMD ["python","app.py"]

