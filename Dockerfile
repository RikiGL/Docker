FROM node:20-alpine
WORKDIR /app

RUN npm install -g npm@10

COPY package*.json ./
RUN npm install

COPY public ./public

RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "start"]