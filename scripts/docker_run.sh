### Scripts variable
DOCKER_IMAGE=peqa/docker-workshop:v1.0
DOCKER_NAME=docker-workshop-container
DOCKER_COMMAND="npm run dev"

### Scripts logic
docker run --rm -d --name=$DOCKER_NAME $DOCKER_IMAGE $DOCKER_COMMAND
docker logs -f $DOCKER_NAME