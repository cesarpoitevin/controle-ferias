FROM node:18-alpine # Use uma imagem base Node.js

WORKDIR /app # Define o diretório de trabalho dentro do contêiner

COPY package*.json ./ # Copia os arquivos package.json e package-lock.json
RUN npm install # Instala as dependências

COPY . . # Copia o restante do código do seu projeto

EXPOSE 3000 # Expõe a porta que seu aplicativo usa

CMD ["npm", "start"] # Comando para iniciar o aplicativo