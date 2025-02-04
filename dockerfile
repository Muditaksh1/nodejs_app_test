FROM node:18  # Use the official Node.js 18 image
WORKDIR /app  # Set the working directory inside the container
COPY package.json .  # Copy package.json first for better caching
RUN npm install  
COPY . .  
CMD ["node", "app.js"]  
EXPOSE 3000  # Expose port 3000

