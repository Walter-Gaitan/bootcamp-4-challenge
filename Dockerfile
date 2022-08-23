FROM ubuntu:18.04
USER root
WORKDIR /home/app

COPY ./package.json /home/app/package.json
COPY ./package-lock.json /home/app/package-lock.json
COPY ./index.js /home/app/index.js

RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_16.x  | bash -
RUN apt-get -y install nodejs
RUN npm install

EXPOSE 8888

CMD [ "npm", "start" ]