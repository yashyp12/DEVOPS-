# Multi Stage build 1 

# here we will install the python dependencies for stage 1

FROM python:3.12 AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt


# Build stage 2 
# here we will use slim version lightest version of python package 

FROM python:3.12-slim

WORKDIR /app

# Here we will copy the code and dependencies installed from the stage 1

COPY --from=builder /install /user/local

COPY app.py .

CMD ["python","app.py"]
