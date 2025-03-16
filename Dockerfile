FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Copy the server files
WORKDIR /app
COPY . .

# Expose the Ollama port
EXPOSE 11434

# Set environment variable for Railway
ENV OLLAMA_HOST=0.0.0.0

# Start Ollama and pull the model
CMD ["sh", "-c", "ollama serve & sleep 10 && ollama pull llama3.2 && exec ollama serve"] 