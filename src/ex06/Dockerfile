FROM nginx
RUN groupadd -r appuser && useradd -r -g appuser appuser
WORKDIR /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY script.sh .
RUN apt-get update && \
    apt-get install -y gcc libfcgi-dev spawn-fcgi && \
    rm -rf /var/lib/apt/lists/*
USER appuser
ENTRYPOINT ["sh", "script.sh"]