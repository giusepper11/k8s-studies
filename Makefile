cluster_on:
	@echo "Starting cluster"
	@kind create cluster --config kind-cluster.yaml
	@echo "Cluster started"

cluster_off:
	@echo "Stopping cluster"
	@kind delete clusters giropops
	@echo "Cluster stopped"