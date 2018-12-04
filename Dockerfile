FROM nginx:1.15

ADD conf.d /etc/nginx/conf.d
ADD https_force.conf /etc/nginx/https_force.conf
ADD entrypoint.sh /entrypoint.sh

RUN rm /etc/nginx/conf.d/default.conf && \
    chmod +x /entrypoint.sh


RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/00_upstream.conf

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
