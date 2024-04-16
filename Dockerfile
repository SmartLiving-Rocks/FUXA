FROM node:14

# Define persistent storage volume (replace with your actual path)
VOLUME ["/share/app"]

# Create app directory within the shared folder
WORKDIR /share/app

# Clone the repository
RUN git clone https://github.com/frangoteam/FUXA.git

# Install server dependencies
WORKDIR /share/app/FUXA/server
RUN npm install

# Workaround for sqlite3 (if needed)
# Check if the issue persists with the chosen Node.js version
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev && \
    apt-get autoremove -yqq --purge && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*  && \
    npm install --build-from-source --sqlite=/usr/bin sqlite3

# Copy project files (excluding node_modules)
COPY --from=source . /share/app/FUXA

# Switch back to the server directory (optional)
WORKDIR /share/app/FUXA/server

# EXPOSE 1881  # This line is commented out, potentially unnecessary
CMD [ "npm", "start" ]
