FROM node:22.21.0 AS build
WORKDIR /Kiza_frontend
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build -- --configuration production

FROM nginx:alpine
COPY --from=build /Kiza_frontend/dist/front-end /usr/share/nginx/html
