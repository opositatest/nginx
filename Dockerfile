FROM nginx:1.15

ADD docker/nginx/conf.d /etc/nginx/conf.d
ADD docker/nginx/symfony.tmpl /etc/nginx/symfony.tmpl
ADD docker/nginx/https_force.conf /etc/nginx/https_force.conf
ADD docker/nginx/entrypoint.sh /entrypoint.sh

RUN rm /etc/nginx/conf.d/default.conf && \
    chmod +x /entrypoint.sh


RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/00_upstream.conf

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
