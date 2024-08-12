# use the official python image from dockerhub
FROM python:3.9-slim

# set the working directory into the container
WORKDIR /app

# copy the requirements to the container
COPY requirements.txt .

# install the dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# copy the rest of the application 
COPY src/ .

# Run the application
CMD ["python", "main.py"]
