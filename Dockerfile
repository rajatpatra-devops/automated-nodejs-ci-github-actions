FROM node:18-alpine

WORKDIR /usr/src/app
COPY app/ .

RUN npm install

EXPOSE 3000
CMD ["npm", "start"]

