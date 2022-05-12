# Create MySql Image for Shipping Application
FROM mysql:latest
ENV MYSQL_USERNAME=root
ENV MYSQL_ROOT_PASSWORD=admin
ENV MYSQL_SERVER=mysql-service
ENV MYSQL_SERVER_PORT=3306
ENV MYSQL_DATABASE='shipping'
EXPOSE 3306
COPY . /docker-entrypoint-initdb.d/
