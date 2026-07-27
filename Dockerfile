FROM node:20-alpine

ENV NODE_OPTIONS="--max-old-space-size=384"

WORKDIR /app

COPY package.json ./
COPY app.js ./

EXPOSE 8080

CMD ["node", "app.js"]
