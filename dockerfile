FROM node:lts-alpine3.19
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
EXPOSE 3000
CMD node index.js