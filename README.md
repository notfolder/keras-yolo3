# keras-yolo3
* build
USER_NAME=$(whoami) USER_ID=$(id -u) GROUP_ID=$(id -g) docker-compose build

* up
USER_NAME=$(whoami) USER_ID=$(id -u) GROUP_ID=$(id -g) docker-compose up -d

* attach
docker attach keras-yolo3

