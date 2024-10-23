# Dockerfile for casa-de-eventos-react

# Base image
FROM node:20.5.1

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g json-server

# Copy the rest of the application code
COPY . .

# Expose the ports the app runs on
EXPOSE 5173 3000

# Start the application and json-server
CMD ["sh", "-c", "npm run dev -- --host & json-server --watch eventos.json --host 0.0.0.0 --port 3000"]