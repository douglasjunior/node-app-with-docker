# Seleciona uma imagem base contendo o runtime desejado
FROM node:12-alpine

# Instala dependências necessárias para rodar a aplicação
RUN apk add --no-cache python g++ make

# Define o diretório padrão de trabalho
WORKDIR /app

# Copia o conteúdo do diretório local (host) para dentro da imagem
COPY . .

# Instala as dependências do projeto Node JS
RUN yarn install --production

# Executa o arquivo index.js com o Node JS
CMD ["node", "src/index.js"]
