FROM python:3.7.3-alpine3.10

RUN apk --no-cache --update-cache add gcc libc-dev

# pip dependencies
COPY ./requirements.txt .
RUN SCONE_MOD=sim pip3 install -r requirements.txt

# copy app
COPY ./src /app

ENTRYPOINT [ "python3", "/app/run.py" ]
