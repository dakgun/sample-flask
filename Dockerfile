FROM python
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . . 
CMD [ "gunicorn --worker-tmp-dir /dev/shm --config gunicorn_config.py app:app"]
EXPOSE 8080
