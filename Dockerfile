FROM nginx:1.25.4
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY html/* /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/
RUN  /bin/bash -c 'chown -R nginx:nginx ./*'
