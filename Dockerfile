FROM node:8

RUN groupadd -r nodejs && useradd -m -r -g nodejs -s /bin/bash nodejs

WORKDIR /usr/src/app

COPY . .
RUN npm install

USER nodejs

CMD ["node", "index.js"]
