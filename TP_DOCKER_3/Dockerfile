FROM node:lts-alpine
WORKDIR /app
COPY music-matcher .
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "start:initdb-populate"]