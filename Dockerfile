# Base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# # Set environment variables
# ENV PORT=5000

# Expose port
EXPOSE 3005

# Start the application
CMD [ "node", "index.js" ]