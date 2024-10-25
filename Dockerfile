# Use Ubuntu as the base image
FROM ubuntu

# Install Python3, pip, and Flask
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

# Copy application.py to /opt/app
COPY application.py /opt/app/

# Set the environment variable and start Flask
CMD FLASK_APP=/opt/app/application.py flask run --host=0.0.0.0
