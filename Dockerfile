FROM tiangolo/uwsgi-nginx-flask:latest
LABEL AUTHOR=tttriplicate@gmail.com

COPY ./app /app
RUN python -m pip install -r requirements.txt
