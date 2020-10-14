FROM node:13.6-alpine

COPY . .

RUN npm ci
CMD npm run build
