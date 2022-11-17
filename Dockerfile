FROM node:15.4.0

ENV PORT=3000
ENV NODE_ENV=development
ENV MONGO_DB_CONNECTION_STRING=mongodb+srv://nicobah:bahbah1@gcp.pku6ttj.mongodb.net/?retryWrites=true&w=majority
ENV MONGO_DB_NAME=gcp
ENV REDIS_URI=rediss://default:AVNS_3UtIF1eJtV21ZwFnS1V@redis-1832ce6f-nicolaibah-17e8.aivencloud.com:27066
COPY . /app
WORKDIR /app

EXPOSE 3000

RUN npm install

CMD ["npm", "start"]