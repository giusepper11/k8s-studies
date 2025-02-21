up:
	@echo "Starting cluster"
	# @kind create cluster --config kind-cluster.yaml
	@minikube start --nodes 3 -p giropops
	@echo "Cluster started"

down:
	@echo "Stopping cluster"
	# @kind delete clusters giropops
	@minikube stop -p giropops
	@echo "Cluster stopped"
