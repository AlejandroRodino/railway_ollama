# Ollama Phi API on Railway

This repository contains a Dockerized setup for running Ollama with the Phi model on Railway. It provides a simple REST API to interact with the model.

## Local Development

1. Clone this repository:
```bash
git clone <your-repository-url>
cd <repository-name>
```

2. Start the Docker container:
```bash
docker-compose up --build
```

The API will be available at:
- Ollama API: http://localhost:11434
- FastAPI server: http://localhost:8000

## API Endpoints

### Health Check
```
GET /
```
Returns the status of the API.

### Generate Text
```
POST /generate
Content-Type: application/json

{
    "prompt": "Your prompt here"
}
```

## Deploying to Railway

1. Create a new project on Railway
2. Connect your GitHub repository
3. Add the following environment variables:
   - `PORT`: 8000
   - `OLLAMA_HOST`: 0.0.0.0

Railway will automatically build and deploy your application.

## Notes

- The first deployment might take some time as it needs to download the Phi model
- The API is configured with CORS enabled for all origins
- Make sure you have enough resources allocated in your Railway project for running the model 