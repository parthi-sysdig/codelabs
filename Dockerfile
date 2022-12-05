FROM node:14.20.0
WORKDIR /usr/src/app
RUN ls
COPY ./site /usr/src/app
RUN ls
RUN npm install && npm install -g gulp-cli
RUN ls
#COPY . /usr/src/app
COPY . /usr/src/app
RUN ls
#RUN git clone https://github.com/googlecodelabs/tools
EXPOSE 8000
CMD [ "gulp", "serve" ]
