#!/bin/bash

echo "nameserver 10.95.72.90" >> /etc/resolv.conf
echo "nameserver 10.95.72.91" >> /etc/resolv.conf

echo "Starting Ollama server ..."
ollama serve &  # Start ollama in background
ollama list
#ollama pull codellama:7b
ollama run codellama:7b

echo "Ollama is ready, creating the model ..."

#ollama create finetuned_mistral -f models/Modelfile
#ollama run finetuned_mistral
