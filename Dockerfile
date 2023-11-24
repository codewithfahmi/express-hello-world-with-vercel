FROM ubuntu:22.04
ENV PORT 3000
RUN apt update -y
RUN apt install nodejs npm postgresql postgresql-contrib -y
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]
EXPOSE 3000