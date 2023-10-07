FROM node:18-alpine

WORKDIR /app

COPY * ./

# tambah script wait-for-it.sh
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

RUN npm ci

EXPOSE 3001

CMD ["node", "index.js"]