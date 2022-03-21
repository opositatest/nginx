FROM nginx:1.20

ADD configuration/10_symfony.conf /etc/nginx/conf.d/10_symfony.conf
ADD nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
