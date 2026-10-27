# STAGE 1 :  The build environment 

FROM node:20-alpine AS builder 

# Set the working dir inside the build container 

WORKDIR /app

# Copy dependencies manifrest first 

COPY package*.json ./

RUN npm ci

COPY ..

RUN npm run build 


FROM nginx:1.25-alpine

WORKDIR /user/share/nginx/html

RUN rm -rf ./*

COPY --from=builder /app/dist .

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

