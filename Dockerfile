FROM node:14-alpine AS node
ENV NODE_ENV=production
ENV PORT=80
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

FROM node AS installer
RUN npm ci

FROM node
COPY --chown=node . .
COPY --from=installer --chown=node /usr/src/app/node_modules/ ./node_modules/
USER node
EXPOSE ${PORT}
CMD ["npm", "start"]
