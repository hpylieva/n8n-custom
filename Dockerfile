FROM mwader/static-ffmpeg:7.1 AS ffmpeg

FROM docker.io/n8nio/n8n:latest
USER root
COPY --from=ffmpeg /ffmpeg  /usr/local/bin/ffmpeg
COPY --from=ffmpeg /ffprobe /usr/local/bin/ffprobe
