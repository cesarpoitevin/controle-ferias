# Usa uma imagem base Node.js com versão específica e base Alpine Linux (mais leve)
FROM node:18-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos package.json e package-lock.json (ou yarn.lock se usar yarn)
COPY package*.json ./

# Instala as dependências (usando --omit=dev para produção, opcional)
RUN npm install --omit=dev

# Copia o restante do código do seu projeto
COPY . .

# Expõe a porta que seu aplicativo usa (geralmente 3000, ajuste se necessário)
EXPOSE 3000

# Comando para iniciar o aplicativo (ajuste conforme necessário)
CMD ["npm", "start"]