FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN wangzhi create-db
RUN wangzhi populate-db
RUN wangzhi add-user -u admin -p admin
EXPOSE 5000
CMD ["wangzhi", "run"]
