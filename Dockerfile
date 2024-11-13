FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME testing
ENV MONGODB_CLUSTER_ADDRESS cluster.ljney.mongodb.net
ENV MONGODB_USERNAME ebenezer
ENV MONGODB_PASSWORD jaxlmbuXndkcGkle

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]