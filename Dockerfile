FROM node:14.20.0
## Download repo
WORKDIR /work/src/app 
COPY ./site .
RUN ls
RUN npm install
RUN npm install -g gulp-cli
#COPY . . 
RUN ls
#RUN git clone https://github.com/googlecodelabs/tools
EXPOSE 8000
CMD [ "gulp", "serve" ]
