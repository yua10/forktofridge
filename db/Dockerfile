# Base Image used to build image
FROM postgres 
# Sets the DB password
ENV POSTGRES_PASSWORD monkyuki10
# Sets the DB name
ENV POSTGRES_DB food
# Copies contents to 'food.sql' over to Image and DB entry point
COPY food.sql /docker-entrypoint-initdb.d/

# food=# \q       # exit psql
# root@beab0d373a5e:/# exit   # exit Docker container
