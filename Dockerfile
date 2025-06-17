FROM public.ecr.aws/docker/library/node:20-alpine
RUN apk add --no-cache make gcc g++ python3
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
