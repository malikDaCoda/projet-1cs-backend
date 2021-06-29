FROM node

COPY app /app

WORKDIR /app

RUN yarn install

RUN yarn data:import

ENTRYPOINT ["yarn", "start"]
