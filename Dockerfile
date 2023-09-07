FROM node:14

WORKDIR /app

COPY . .

ENV NODE_ENV=production
ENV DB_HOST=item-db

#production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

EXPOSE 8080

CMD ["npm", "start"]
