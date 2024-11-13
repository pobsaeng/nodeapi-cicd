# Use the official Node.js image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the application code
COPY . .

# Expose the app's port
EXPOSE 8087

# Start the application
CMD ["npm", "start"]
