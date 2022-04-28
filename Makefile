# Create cluster.
create:
	kind create cluster

# Delete cluster.
delete:
	kind delete cluster

# Create ingress (NGINX).
ingress:
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
	kubectl wait --namespace ingress-nginx \
		     --for=condition=ready pod \
		     --selector=app.kubernetes.io/component=controller \
		     --timeout=90s
