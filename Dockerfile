FROM alpine:3.4

COPY extract /bin/
RUN chmod 755 /bin/extract

ENTRYPOINT ["extract"]
