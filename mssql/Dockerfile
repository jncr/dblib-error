FROM microsoft/mssql-server-linux:latest

RUN mkdir -p /usr/opt/db/
WORKDIR /usr/opt/db/
COPY . /usr/opt/db/

ENTRYPOINT [ "/usr/opt/db/entrypoint" ]
