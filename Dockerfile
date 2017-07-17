FROM alpine
RUN apk update && apk add haproxy && apk add bash
ADD hamba /usr/local/bin/hamba
ENV HOME /run
VOLUME /run
ENTRYPOINT ["hamba"]
