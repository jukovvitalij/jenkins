FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y nginx curl && \
    mkdir -p /app/static

COPY nginx.conf /etc/nginx/nginx.conf

COPY static/* /app/static/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
