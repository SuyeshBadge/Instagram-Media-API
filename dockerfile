FROM node:18-alpine

WORKDIR /app

# Install dependencies (including dev deps)
COPY package.json yarn.lock ./
RUN yarn install

# Copy source
COPY . .

# Build the app
RUN yarn build

EXPOSE 8080

# Run the built app
CMD ["yarn", "start"]
