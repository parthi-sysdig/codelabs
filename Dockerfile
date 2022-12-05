FROM node:14.20.0
## Download repo
WORKDIR /work/src/app 
#RUN pwd
#COPY package.json . 
RUN ls
## change dir to folder
RUN cd site/
RUN cat package.json
## install npm and gulp gli
RUN npm install
RUN npm install -g gulp-cli
COPY . . 
RUN ls
#RUN git clone https://github.com/googlecodelabs/tools
# set working directory
## change dir to folder
#RUN pwd
#RUN cd site/
EXPOSE 8080
CMD [ "gulp", "serve" ]
