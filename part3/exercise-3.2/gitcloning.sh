#!/bin/sh

echo "Choose the repository you would like to clone"

read gitlink 

mkdir clone

git clone "$gitlink" ./clone

echo "Finished now looking for file"

DOCKERFILE=$(find . type f -name "Dockerfile")

echo "$DOCKERFILE"

docker build ./clone/ -t exercise-3.2 

#Log in to Docker
echo "Provide your login in name:"

read USERNAME

echo "Provide your password:"

read PASSWORD

docker login --username $USERNAME --password $PASSWORD

#Pushing the image to docker

docker tag exercise-3.2 lapalmerjack/exercise-3.2

docker push lapalmerjack/exercise-3.2
