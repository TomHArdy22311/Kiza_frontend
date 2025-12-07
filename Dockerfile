FROM node:22.21.0
WORKDIR /KIZA_FRONTEND
COPY package.json* ./
RUN npm install
EXPOSE 4200
COPY . .
CMD node npm start