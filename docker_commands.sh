sudo docker --version
sudo docker info
sudo docker images
sudo docker image ls
sudo docker ps -a
sudo docker rm <CONTAINER ID> 
sudo docker rm $(docker ps -a -f status=exited -q)
sudo docker run -it <CONTAINER_NAME> <COMMAND>
sudo docker run -it --rm  <CONTAINER_NAME> <COMMAND>
sudo docker rename <OLD_CONTANER_NAME> <NEW_CONTAINER_NAME>
sudo docker search <KEYWORD_STRING>
sudo docker ps -all
sudo docker cp <LOCAL_MACHINE_PATH/file.dat> <CONTAINERID:/PATH-to-copy>
sudo docker cp <CONTAINERID:/PATH/file.dat> <LOCAL_MACHINE_PATH-to-copy>
sudo docker container restart <CONTAINER_NAME>
sudo docker container attch <CONTAINER_NAME>
sudo docker start -ai <CONTIiNER_NAME>
sudo docker exec -it <CONTAINER_ID> <COMMAND>
sudo docker run -v </LOCAL-PATH-to-mount>:<CONTAINER-PATH>
sudo docker run -it --name <MY_NEW_CONTAINER_NAME> <imagename> <COMMAND>>>>
sudo docker build -t <MY_IMAGE_NAME> .   # Dockerfile should be there in the current direcoty
sudo docker commit <CONTAINER-ID> <NEW_NAME>:<tag>
sudo docker login -u <username> -p <Password>
sudo docker push <IMAGE>:<tag>
sudo docker pull <username/container-name>:<tag>
sudo docker inspect <CONTAINER-ID>
sudo docker tag <IMAGEID> <username/image>:<new-tag>
sudo docker save IMAGE > IMAGE.tar
sudo docker load --input IMAGE.tar
sudo docker run --hostname=<new-hostname> -it <CONTAINERID>
sudo docker run -h <new-hostname> -it <CONTAINERID>
sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" jamesnetherton/gimp
sudo docker run -it  --volume="/$HOME/ANJIBABU/DOCKER/MDAnalysis:/MDAnalysis" anjibabu480/mdanalysis python3 /MDAnalysis/Example_MDAnalsis.py
