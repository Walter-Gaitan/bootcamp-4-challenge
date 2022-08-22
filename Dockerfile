FROM Ubuntu:18.04

RUN apt update && apt upgrade -y nodejs

EXPOSE 8888

CMD ["npm", "start"]