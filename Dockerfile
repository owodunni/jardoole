# base image
FROM node:12.2.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
RUN yarn global add @vue/cli
COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install
RUN npm install -g firebase-tools

COPY . .


# start app
CMD ["npm", "run", "serve"]