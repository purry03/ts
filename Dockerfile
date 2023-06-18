# Use the official Python base image
FROM python:3

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script to the working directory
COPY cron.py .

# Install the required dependencies
RUN pip install kubernetes

# Run the Python script when the container starts
CMD [ "python", "cron.py" ]
