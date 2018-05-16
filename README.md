To learn about this sandbox and for instructions on how to run it please head over
to the [envoy docs](https://www.envoyproxy.io/docs/envoy/latest/start/sandboxes/jaeger_tracing)

### Discovery phase
![discovery phase](docs/envoy-s2s-example-discovery.png)

### API call phase
![API call phase](docs/envoy-s2s-example-API-call.png)

### Comments
1. You should open TLS link like https://domain:8000/trace/1 not http.
2. There are self-signed certificates are used in `tls` branch, so it can be blocked by browser/antivirus. Just pass the alert and see a response.