FROM alpine:latest
RUN apk add --no-cache nodejs npm


WORKDIR /app


COPY . /app


RUN npm install


EXPOSE 9015


ENTRYPOINT ["node"]

CMD ["server.js"]
