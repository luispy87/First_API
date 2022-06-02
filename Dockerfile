#Write code
FROM python:3.8.13-buster

COPY model.joblib /model.joblib
COPY requirements.txt /requirements.txt
COPY TaxiFareModel /TaxiFareModel
COPY api /api

RUN pip install -U pip
RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PORT
