FROM node:alpine
WORKDIR /app
COPY package*.json .

RUN npm i

EXPOSE 3000

COPY . .

RUN npm run build
CMD ["node", "dist/main.js"]