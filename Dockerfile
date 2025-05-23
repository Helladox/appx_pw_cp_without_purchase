FROM python:latest
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
WORKDIR .
COPY . .
RUN pip3 install -r requirements.txt
CMD gunicorn app:app & python3 main.py
