# Use a imagem oficial do Node.js como base
FROM node:14

# Crie um diretório de trabalho
WORKDIR /usr/src/app

# Copie os arquivos de pacotes e instale as dependências
COPY package*.json ./
RUN npm install

# Copie o restante dos arquivos do projeto
COPY . .

# Exponha a porta 3000
EXPOSE 3000

# Comando para iniciar a aplicação
CMD [ "node", "app.js" ]
