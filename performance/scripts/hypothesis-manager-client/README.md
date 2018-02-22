# `hypothesis-manager-client`

Performance test script for the hypothesis-manager-api.

The Clients' job is to query experiments info, request experiment creation, updating and deletion and other handling operations.

### Scenarios

##### get experiment

Query experiment info
```	
	GET /experiments/{experiment_id}
```