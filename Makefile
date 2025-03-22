up:
	@echo "Starting cluster"
	@minikube start \
		--cpus=2 \
		--memory=2g \
		--nodes 3 \
		--container-runtime=containerd \
		--bootstrapper=kubeadm \
		--extra-config=kubelet.authentication-token-webhook=true \
		--extra-config=kubelet.authorization-mode=Webhook \
		--extra-config=scheduler.bind-address=0.0.0.0 \
		--extra-config=controller-manager.bind-address=0.0.0.0
	@minikube addons disable metrics-server
	@echo "Cluster started"

kindup:
	@echo "Starting cluster"
	@kind create cluster --config kind-cluster.yaml
	@echo "Cluster started"

down:
	@echo "Stopping cluster"
	@minikube stop
	@echo "Cluster stopped"

kinddown:
	@echo "Stopping cluster"
	@kind delete clusters giropops
	@echo "Cluster stopped"