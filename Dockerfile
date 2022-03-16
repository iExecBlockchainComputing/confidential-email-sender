FROM python:3.9-alpine3.15

RUN apk --no-cache --update-cache add gcc libc-dev

# pip dependencies
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

# copy app
COPY ./src /app

ENTRYPOINT [ "python3", "/app/app.py" ]
