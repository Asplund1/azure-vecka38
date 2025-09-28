# ---------- Builder ----------
FROM node:20-alpine AS builder
WORKDIR /app

# Bättre cache: installera beroenden först
COPY package*.json ./
RUN npm ci

# Kopiera resten av koden
COPY . .

# Kör build om du har (annars låt ligga kvar som kommentar)
# RUN npm run build

# ---------- Production ----------
FROM node:20-alpine AS production
WORKDIR /app

# Endast produktionsberoenden för liten image
COPY package*.json ./
RUN npm ci --omit=dev

# Ta med kod/artefakter från builder
COPY --from=builder /app ./

# Kör som icke-root
RUN addgroup -S app && adduser -S app -G app
USER app

ENV NODE_ENV=production
ENV PORT=8080
EXPOSE 8080

CMD ["npm", "start"]
