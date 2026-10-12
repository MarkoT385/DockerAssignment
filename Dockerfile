# Step 1: Use a Node.js base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json (and package-lock.json if present) first for better caching
COPY package*.json ./

# Step 4: Install the app's dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Document that the app listens on port 3000
EXPOSE 3000

# Step 7: Start the application
CMD ["npm", "start"]