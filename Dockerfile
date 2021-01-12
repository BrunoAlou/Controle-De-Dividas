FROM node:alpine

WORKDIR /app

COPY adonis /app
COPY react /app







# start app
RUN /adonis
RUN npm install
CMD ["adonis", "migration:run"]
CMD ["adonis", "serve --dev"]
# start app
RUN cd /react
RUN npm install
RUN npm install react-scripts@3.4.1 -g --silent
CMD ["npm", "start"]