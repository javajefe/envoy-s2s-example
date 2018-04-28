#!/bin/bash
while true
do
	for p in $proxies
	do
		pp=(${p//:/ })
		export proxy="${pp[0]}"
		export proxyport="${pp[1]}"
		export service="${pp[2]}"
		export ip=$(dig +short $proxy | head -n 1)
		if [ -n $ip ]
			then
			envsubst < template > service.post
			echo Registering proxy $proxy IP $ip:$proxyport for $service with POST:
			cat service.post
			curl -v -s -X POST -d @service.post http://$discovery:8080/v1/registration/$service
		fi
	done
	sleep $refresh_interval
done