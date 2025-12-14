FROM node:22.21.0 AS build
WORKDIR /Kiza_frontend
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build -- --configuration production

FROM nginx:alpine
COPY --from=build /app/dist/Kiza_frontend /usr/share/nginx/html
