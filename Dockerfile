FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Clone FUXA repository
RUN git clone https://github.com/frangoteam/FUXA.git

# Install server dependencies
WORKDIR /usr/src/app/FUXA/server
RUN npm install
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev && \
    apt-get autoremove -yqq --purge && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*  && \
    npm install --build-from-source --sqlite=/usr/bin sqlite3

# Copy FUXA files
WORKDIR /usr/src/app/FUXA
COPY . .

# Set up persistent volume
VOLUME /usr/src/app/FUXA/server/map/share

# Set working directory and start server
WORKDIR /usr/src/app/FUXA/server
CMD [ "npm", "start" ]
