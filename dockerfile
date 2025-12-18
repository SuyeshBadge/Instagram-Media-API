# 1) Use official Node.js image as base (LTS)
FROM node:18-alpine

# 2) Create app directory inside container
WORKDIR /usr/src/app

# 3) Copy package.json + yarn.lock (or package-lock.json)
COPY package.json yarn.lock* ./

# 4) Install deps
RUN npm install --production

# 5) Copy source
COPY . .

# 6) Build (TypeScript → JavaScript)
RUN npm run build

# 7) Expose default port
EXPOSE 8080

# 8) Start app
CMD ["npm", "run", "start"]
