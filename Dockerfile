FROM node:14.19.1 as dev

WORKDIR /auth
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
CMD [ -d "node_modules" ] && npm run start:debug --debug 0.0.0.0:9229 || npm install && npm run start:dev --debug 0.0.0.0:9229