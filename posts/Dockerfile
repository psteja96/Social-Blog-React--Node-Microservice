FROM node:alpine
LABEL authors="pteja"

WORKDIR /app
COPY package.json ./
RUN npm install
COPY ./ ./

CMD ["npm","start"]