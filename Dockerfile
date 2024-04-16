FROM node:14

# Create app directory
WORKDIR /usr/src/app

RUN git clone https://github.com/frangoteam/FUXA.git
WORKDIR /usr/src/app/FUXA

# Install server dependencies
WORKDIR /usr/src/app/FUXA/server
RUN npm install

# Workaround for sqlite3 (if needed)
# Check if the issue persists with the chosen Node.js version
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev && \
    apt-get autoremove -yqq --purge && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*  && \
    npm install --build-from-source --sqlite=/usr/bin sqlite3

# Copy project files (excluding node_modules)
COPY --from=source . /usr/src/app/FUXA

# Define persistent storage volume
VOLUME ["/usr/src/app/FUXA"]

WORKDIR /usr/src/app/FUXA/server
# EXPOSE 1881  # This line is commented out, potentially unnecessary
CMD [ "npm", "start" ]
