FROM python:3.7.3-alpine3.10

RUN apk --no-cache --update-cache add gcc libc-dev

# pip dependencies
RUN pip3 install eth-abi==2.1.1 mailjet_rest
# copy app
COPY ./src /app

ENTRYPOINT [ "python3", "/app/run.py" ]
