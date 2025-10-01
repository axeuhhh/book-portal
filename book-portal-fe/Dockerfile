# build front-end
FROM node:alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

# Copy dependency files first
COPY package.json package-lock.json* ./

# Install dependencies (including devDependencies)
RUN npm install --include=dev --silent

# Copy the rest of the frontend code
COPY . .

# Build React app
RUN npm run build

# serve build with nginx
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx/nginx.conf /etc/nginx/conf.d
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
