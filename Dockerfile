ARG BUILD_FROM
FROM node:14

# Install requirements for add-on
RUN \
  npm install -g --unsafe-perm @frangoteam/fuxa

# Python 3 HTTP Server serves the current working dir
# So let's set it to our add-on persistent data directory.
WORKDIR /data

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "fuxa" ]
