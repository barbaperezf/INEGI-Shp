# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install system dependencies for geospatial support and PostgreSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    build-essential \
    libgeos-dev \
    libgdal-dev \
    gdal-bin \
    python3-gdal \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME="World"

# Run JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
