FROM ubuntu:22.04

# Install packages
RUN apt-get update && apt-get install -y \
    openjdk-17-jre-headless \
    unzip \
    bash \
    && apt-get clean

WORKDIR /app

# Copy everything
COPY . .

# Make shell scripts executable
RUN chmod +x run.sh main.sh

# Expose ports used by Eaglercraft relay
EXPOSE 8081
EXPOSE 25565

# Start command
CMD ["bash", "run.sh"]
