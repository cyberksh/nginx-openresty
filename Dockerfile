FROM docker.io/openresty/openresty:bullseye-fat

WORKDIR /app
EXPOSE 8080
RUN mkdir -p /app/logs

COPY . .

CMD ["nginx", "-p", "/app", "-c", "/app/conf/nginx.conf"]

