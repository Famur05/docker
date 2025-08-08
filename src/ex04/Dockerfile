FROM nginx
WORKDIR /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY main.c .
COPY script.sh .
RUN apt-get update
RUN apt install -y gcc
RUN apt-get install -y libfcgi-dev
RUN apt install -y spawn-fcgi
ENTRYPOINT ["sh", "script.sh"]