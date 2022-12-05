FROM node:14.20.0
## Download repo
WORKDIR /work/src/app 
#RUN pwd
COPY . . 
RUN ls
## change dir to folder
#RUN cd site/
RUN cat package.json
WORKDIR /work/sr/app/codelabs/codelabs/site
RUN ls
RUN cat package.json
## install npm and gulp gli
RUN ls
RUN npm install
RUN npm install -g gulp-cli
#COPY . . 
#RUN git clone https://github.com/googlecodelabs/tools
# set working directory
## change dir to folder
#RUN pwd
#RUN cd site/
EXPOSE 8080
CMD [ "gulp", "serve" ]
