# multi stage building of docker file 

FROM python:3.12 AS builder

# SET WORKDIR

WORKDIR /app

# copy requirements 

COPY requirements.txt .

# INSTALL PACKAGES 

RUN pip install -r requirements.txt

# STAGE 2

FROM python:3.12-slim 

WORKDIR /app

COPY --from=builder /install /usr/local

COPY app.py .

CMD ["python","app.py"]

