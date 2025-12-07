FROM node:22.21.0
WORKDIR /Kiza_frontend
COPY package.json* ./
RUN npm install
EXPOSE 4200
COPY . .
CMD ["npm", "start"]