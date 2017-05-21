FROM alpine
MAINTAINER Naveen Kumar Sivanandam "nsivanandam@vmware.com"
RUN apk add --no-cache py2-pip && pip2 install --upgrade pip && pip2 install flask
EXPOSE 5000
COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["hello.py"]
