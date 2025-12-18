FROM node:18-alpine

WORKDIR /app

# Install dependencies (including dev deps)
COPY package.json yarn.lock ./
RUN yarn install

# Copy source
COPY . .

EXPOSE 8080

# Run using ts-node
CMD ["yarn", "dev"]
