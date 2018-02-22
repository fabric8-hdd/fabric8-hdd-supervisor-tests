# `hypothesis-scout`

Performance test script for the hypothesis-measurement-api.

The Scouts' job is to send json metric objects to the hypothesis-measurement-api payload.

### Scenarios

##### push light payload

Send a lightweight json payload acting as a metric to the endpoint.
```
	POST /measurements
	Content-Type: application/json
```

##### push heavy payload

Send a heavy json payload acting as a metric to the endpoint.
```
	POST /measurements
	Content-Type: application/json
```