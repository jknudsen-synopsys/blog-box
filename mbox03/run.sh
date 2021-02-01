source name.sh
docker run \
	-it \
	--rm \
	-p 1883:1883 \
        -p 12345:12345 \
        --hostname ${IMAGE} \
	--name ${IMAGE} \
	${IMAGE}
