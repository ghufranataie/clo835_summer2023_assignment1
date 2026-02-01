FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app
# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    mysql-client \
    && rm -rf /var/lib/apt/lists/*
# Copy application code
COPY . .
# Upgrade pip and install Python dependencies
RUN pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["python3", "app.py"]