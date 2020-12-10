FROM sconecuratedimages/public-apps:python-3.7.3-alpine3.10-scone3.0

# prepare tooling
RUN apk --no-cache --update-cache add gcc libc-dev

# pip dependencies
COPY ./requirements.txt .
RUN SCONE_MOD=sim pip3 install -r requirements.txt
#RUN SCONE_MOD=sim pip3 install eth_abi mailjet_rest
# copy app
COPY ./src /app

# protect filesystem with scone
COPY ./tee/protect-fs.sh ./Dockerfile /build/
RUN sh /build/protect-fs.sh /app

ENTRYPOINT [ "python", "/app/run.py" ]
