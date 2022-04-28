# Start minikube.
start:
	minikube start --cpus 4

# Stop minikube.
stop:
	minikube stop

# Create cluster.
create:
	kind create cluster

# Delete cluster.
delete:
	kind delete cluster
