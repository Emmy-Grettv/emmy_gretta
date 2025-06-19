# Use official Node.js base image
FROM node:22

# Create app directory
WORKDIR /usr/src/app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

#commands to use
# Build image
#docker build -t devops-express-app .
#docker run -d -p 3000:3000 --name express-server devops-express-app