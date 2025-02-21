up:
	@echo "Starting cluster"
	@minikube start --nodes 3 -p giropops
	@echo "Cluster started"

kindup:
	@echo "Starting cluster"
	@kind create cluster --config kind-cluster.yaml
	@echo "Cluster started"

down:
	@echo "Stopping cluster"
	@minikube stop -p giropops
	@echo "Cluster stopped"

kinddown:
	@echo "Stopping cluster"
	@kind delete clusters giropops
	@echo "Cluster stopped"