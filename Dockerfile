FROM node:lts-alpine

# Create app directory
WORKDIR /app

# copy package.json
COPY package*.json .

# install dependencies
RUN npm install

# copy app source code
COPY . .

# expose port 3000
EXPOSE 8000

# start app
CMD ["npm", "start"]