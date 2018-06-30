To learn about this sandbox and for instructions on how to run it please head over
to the [envoy docs](https://www.envoyproxy.io/docs/envoy/latest/start/sandboxes/jaeger_tracing)

To enable ElasticSearch in Docker run 
```sudo sysctl -w vm.max_map_count=262144```
on the host OS. See https://github.com/spujadas/elk-docker/issues/92 for details.

### Discovery phase
![discovery phase](docs/envoy-s2s-example-discovery.png)

### API call phase
![API call phase](docs/envoy-s2s-example-API-call.png)