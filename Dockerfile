FROM node:alpine
 
WORKDIR /user/app
 
COPY package*.json ./
 
RUN npm install
 
COPY . .

EXPOSE 3002
CMD ["npm", "run", "dev"]
