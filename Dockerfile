FROM node:16-alpine3.15
WORKDIR /usr/src/app
COPY ["package.json",  "./"]
COPY ./dist ./dist
RUN npm install -g @nestjs/cli
RUN npm install
CMD ["npm", "run", "start"]
EXPOSE 80