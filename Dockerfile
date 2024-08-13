FROM node:18.20.1-alpine
WORKDIR /app
COPY package*.json ./

RUN npm update
# RUN npm cache clean --force
RUN npm i
COPY . .

# RUN npx prisma init
RUN npx prisma generate
# RUN npx prisma migrate --name init

EXPOSE 3000


CMD ["npm", "run", "start:migrate:prod"]