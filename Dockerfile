# Qual imagem iremos partir nossa aplicação
FROM node:10.13-alpine
ENV NODE_ENV production

# Para para copiar os arquivos
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

#Instalando as dependências
RUN yarn
COPY . .

#Porta que a nossa aplicação estará exposta
EXPOSE 3000

#Executamos a aplicação
CMD yarn start