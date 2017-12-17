FROM mhart/alpine-node:latest
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt
# RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/
RUN cp -a /tmp/. /opt/

WORKDIR /opt
ADD . /opt/user
ADD . /opt/test
ADD . /opt/app.js
ADD . /opt/db.js
ADD . /opt/server.js
ADD . /opt/.env

EXPOSE 3000

CMD ["npm", "start"]