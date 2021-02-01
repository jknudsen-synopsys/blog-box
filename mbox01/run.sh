source name.sh
docker run \
	-it \
	--rm \
	-p 1883:1883 \
        --hostname ${IMAGE} \
	--name ${IMAGE} \
	${IMAGE}
