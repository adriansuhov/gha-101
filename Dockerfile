# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements file first
COPY requirements.txt /app/

# Install dependencies (this layer will be cached unless requirements.txt changes)
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the application files
COPY . /app/

# Specify the command to run the app
CMD ["python", "app.py"]
