FROM docker.io/openresty/openresty:bullseye-fat

WORKDIR /app
EXPOSE 8080
RUN mkdir -p logs
RUN mkdir -p nginx
RUN opm get knyar/nginx-lua-prometheus

COPY . .

CMD ["nginx", "-p", "/app", "-c", "/app/conf/nginx.conf"]

