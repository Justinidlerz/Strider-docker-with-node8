FROM strider/strider-docker-slave

USER root
RUN apt-get update  
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN npm install -g strider-docker-slave@1.*.*
RUN sudo chmod -R 777 /home/strider
