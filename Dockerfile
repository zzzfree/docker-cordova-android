FROM beevelop/android-nodejs

ENV CORDOVA_VERSION 6.4.0

WORKDIR "/tmp"

RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}

RUN cd /tmp \
    && cordova create test \
    && cd /tmp/test \
    && cordova platform add android \
    && cordova build android
