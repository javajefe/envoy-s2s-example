#!/bin/bash
while true
do
	for (( i=1; i <= 2; i++ ))
	do
		export service=service$i
		export proxy=local-envoy$i
		export ip=$(dig +short $proxy | head -n 1)
		export port=80
		if [ -n $ip ]
			then
			envsubst < template > $service.post
			curl -v -s -X POST -d @service$i.post http://$discovery:8080/v1/registration/$service
		fi
	done
	sleep 5
done