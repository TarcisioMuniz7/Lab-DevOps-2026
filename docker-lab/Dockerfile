# Use python:3.9-slim como imagem base
FROM python:3.9-slim

# Defina o diretório de trabalho como /app
WORKDIR /app

# Copie o arquivo requirements.txt e instale as dependências
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copie todo o código fonte para /app
COPY . .

# Defina a variável de ambiente FLASK_APP=app.py
ENV FLASK_APP=app.py

# Exponha a porta 5000
EXPOSE 5000

# O comando de inicialização deve ser flask run --host=0.0.0.0
CMD ["flask", "run", "--host=0.0.0.0"]
