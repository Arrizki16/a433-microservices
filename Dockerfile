# Pull node with tag 14-alpine image from Dockerhub
FROM node:14-alpine 

# Change working directory to /app
WORKDIR /app

# Copy all files from current directory to container working directory (/app)
COPY . .

# Fill the database environment and host
ENV NODE_ENV=production DB_HOST=item-db

# Install and build npm dependencies
RUN npm install --production --unsafe-perm && npm run build

# Expose application to port 8080
EXPOSE 8080

# Start application with npm start command
CMD ["npm", "start"]