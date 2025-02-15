from python:latest

COPY . .
RUN pip install -r requirements.txt

CMD ["gunicorn", "-k", "uvicorn.workers.UvicornWorker", "-c", "gunicorn.conf.py", "test:app"]

