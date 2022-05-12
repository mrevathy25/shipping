FROM python:alpine3.10
LABEL Client="logistic-python apps"
MAINTAINER Revathy
COPY . /shipping
WORKDIR /shipping
RUN pip install --upgrade pip
RUN apk add --no-cache mariadb-connector-c-dev ;\
    apk add --no-cache --virtual .build-deps \
        build-base \
        mariadb-dev ;\
    pip install mysqlclient;\
    apk del .build-deps 
RUN pip install -r requirement.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
