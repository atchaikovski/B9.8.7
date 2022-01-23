FROM python:3.8-slim
WORKDIR /app
COPY dl.py dl.py
COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3", "/app/dl.py"]
