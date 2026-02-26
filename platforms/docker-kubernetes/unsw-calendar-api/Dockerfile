# syntax=docker/dockerfile:1

# ── Stage 1: build ──
FROM node:24-alpine AS builder

RUN corepack enable

WORKDIR /app

# Install all dependencies
RUN pnpm install --frozen-lockfile

# Copy source and compile
COPY tsconfig.json ./
COPY src/ ./src/
RUN pnpm build


# ── Stage 2: production image ──
FROM node:24-alpine AS runtime

RUN corepack enable

# Run as a non-root user for security
RUN addgroup -S app && adduser -S app -G app

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

# Install production dependencies only
RUN pnpm install --frozen-lockfile --prod

# Copy compiled output from the builder stage
COPY --from=builder /app/dist ./dist

# Create the cache directory and give the app user ownership
RUN mkdir -p cache && chown -R app:app /app

USER app

# HOST must be 0.0.0.0 inside a container so the port is reachable from outside
ENV HOST=0.0.0.0
ENV PORT=3000
EXPOSE 3000

# Mount point for the persistent cache file
VOLUME ["/app/cache"]

CMD ["node", "dist/server.js"]