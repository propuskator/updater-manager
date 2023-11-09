FROM docker/compose:1.26.0
WORKDIR /app
COPY run.sh run.sh
ENTRYPOINT ["echo", "Done!"]