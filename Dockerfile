FROM node:22.21.0 AS build
WORKDIR /Kiza_frontend
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /Kiza_frontend/dist /usr/share/nginx/html   
EXPOSE 4200
CMD ["nginx", "-g", "daemon off;"]
