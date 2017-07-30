FROM node:latest
COPY main.js /src/
COPY package.json /src/
COPY package-lock.json /src/

RUN cd /src; npm install

EXPOSE 2048

ENTRYPOINT ["node", "/src/main.js", "--db", "/data/db.sqlite", "--port", "2048"]
