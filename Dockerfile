FROM node:14.20.0
# Download repo
WORKDIR /work/src/app 
RUN git clone https://github.com/googlecodelabs/tools
# set working directory
## change dir to folder
RUN pwd
RUN cd site/
## change dir to folder
COPY  . .
## install dependencies
RUN npm install
RUN npm install -g gulp-cli
EXPOSE 8080
CMD [ "gulp", "serve" ]
