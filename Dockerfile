FROM node:14.20.0-slim
COPY  . .
EXPOSE 8080
CMD [ "gulp", "serve" ]
