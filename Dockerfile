
FROM node:alpine:6.4.2 as builder
COPY . /app
WORKDIR /app
RUN npm install
RUN npm run build

FROM nginx:1.21.6-alpine
EXPOSE 80
COPY --from=builder /app/dist/myapp /usr/share/nginx/html
