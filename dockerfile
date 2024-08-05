FROM node:lts-alpine3.19 as builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from = builder /app/build /usr/share/nginx/html
EXPOSE 3000

# after this we need to run below command on terminal to build docker image
 # docker build . -t myapp

# to run the application 
 # docker run -p 8080:3000 myapp