FROM node:18-alpine
WORKDIR /app

# 安装依赖
COPY package*.json ./
RUN npm ci --only=production

# 复制源码
COPY server.js ./
COPY public ./public

# 暴露端口
EXPOSE 80

# 启动
CMD ["node", "server.js"]
