FROM docker:19.03.13-dind
RUN apk update && apk add tzdata vim openjdk8 libstdc++ curl ca-certificates bash && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /root/.cache 
RUN mkdir -p /etc/docker && echo -e '{"insecure-registries": ["mirror.***.com"]}' > /etc/docker/daemon.json
