FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install curl gcc g++ make git -y
EXPOSE 4200

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install nodejs -y
RUN npm install -g @angular/cli

WORKDIR /home

# docker image build -t angular-docker-sandbox .
# docker run -p 4200:4200 -v /FILE/PATH/TO_PROJECT/angular-docker-sandbox:/home/ -it angular-docker-sandbox
