FROM node:18-alpine

WORKDIR /app

COPY src/package*.json ./
RUN npm install

COPY src .

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Change ownership of app files
RUN chown -R appuser:appgroup /app

# Switch to non-root user
USER appuser

EXPOSE 5000

CMD ["node", "app.js"]