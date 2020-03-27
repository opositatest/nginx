# Opositatest nginx

Install
---
Build image:
```
docker built . -t [REPOSITORY:TAG]
```

>This image depend on backend with name "php" and listen port "9000". 
>If you try run this image without backend return fail.

Run image:
```
# Create network for dependency:
docker network create my-network

# Run Backend server:
docker run -d --net=my-network -e APP_ENV=dev --name php opositatest/php-fpm:latest

# Run Nginx server:
docker run --net=my-network -e APP_ENV=dev --name [CONTAINER_NAME] opositatest/nginx:latest
```



Test service Nginx with php-fpm backend:
```
docker-compose -f docker-compose.test.yml up --build --abort-on-container-exit
````

Environment in .env:
* APP_ENV=(dev|prod)