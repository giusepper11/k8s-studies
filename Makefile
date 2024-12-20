up:
	@echo "Starting cluster"
	@kind create cluster --config kind-cluster.yaml
	@echo "Cluster started"

down:
	@echo "Stopping cluster"
	@kind delete clusters giropops
	@echo "Cluster stopped"
