FROM node:8

RUN groupadd -r nodejs && useradd -m -r -g -s /bin/bash nodejs nodejs

USER nodejs

WORKDIR /usr/src/app

# COPY . .
# RUN npm install --production

CMD [“node”, “index.js”]
