# Use the official Home Assistant add-on base image
ARG BUILD_FROM
FROM $BUILD_FROM

# Copy your custom run script into the container
COPY run.sh /usr/bin/run.sh
RUN chmod +x /usr/bin/run.sh

# Expose the required port (change if needed)
EXPOSE 1881

# Start the frangoteam/fuxa container
CMD ["/usr/bin/run.sh"]
