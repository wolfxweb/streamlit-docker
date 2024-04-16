# Use a imagem oficial do Python como imagem base
FROM python:3.8-slim

# Instala dependências para suporte do Streamlit em sistemas ARM
RUN apt-get update && apt-get install -y \
    build-essential \
    libhdf5-dev \
    libatlas-base-dev \
    libopenblas-dev \
    liblapack-dev \
    gfortran \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências Python especificadas no requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia os arquivos do aplicativo para o diretório de trabalho
COPY code/ /app/

# Expõe a porta 8501 para a aplicação Streamlit
EXPOSE 8501

# Comando para executar o aplicativo quando o contêiner for iniciado
CMD ["streamlit", "run", "app.py"]
