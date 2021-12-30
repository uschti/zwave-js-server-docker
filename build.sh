#!/bin/bash

version=8.9.2
tagName=uschti/zwave-js-server
push=$1

docker image build --build-arg VERSION=${version} -t ${tagName} -t ${tagName}:${version} .

if [[ -z "$push" || $push == true ]]; then
    echo "Pushing to Docker HUB"
    docker push ${tagName} &&
        docker push ${tagName}:${version}
fi
