FROM node:10-alpine

RUN apk add --update --no-cache curl python2 && \
    curl --compressed -o- -L https://yarnpkg.com/install.sh | sh && \
    cd /usr/local/bin && \
    rm yarn && \
    ln -s /root/.yarn/bin/yarn && \
    yarn global add @vue/cli @vue/cli-service-global

WORKDIR /app
