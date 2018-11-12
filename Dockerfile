FROM node:10
RUN mkdir -p /instructorDir
WORKDIR /instructorDir
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3332
CMD ["npm", "start"]