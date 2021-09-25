FROM node:14-alpine AS node
ENV NODE_ENV=production
ENV PORT=80
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install nodemon -g
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 80
RUN chown -R node /usr/src/app
USER node
CMD ["nodemon", "bin/www"]
