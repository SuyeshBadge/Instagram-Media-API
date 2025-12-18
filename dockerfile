FROM node:18-alpine

WORKDIR /app

# Install dependencies (including dev deps)
COPY package.json package-lock.json* ./
RUN npm install

# Copy source
COPY . .

EXPOSE 8080

# Run using ts-node
CMD ["npm", "run", "start"]
