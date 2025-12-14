FROM node:22.21.0
WORKDIR /Kiza_frontend
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD ["npm", "start"]
