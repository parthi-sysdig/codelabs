FROM node:14.20.0
WORKDIR /work/src/app 
RUN ls
COPY ./site/package.json .
RUN ls
RUN npm install
RUN npm install -g gulp-cli
RUN ls
#COPY . /usr/src/app
COPY . . 
RUN ls
#RUN git clone https://github.com/googlecodelabs/tools
EXPOSE 8000
CMD [ "gulp", "serve" ]
