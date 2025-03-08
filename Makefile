run_website:
		docker build -t newimage . && \
		docker run --rm --name newcontainer -p 8000:3000 newimage
install_kind:
		choco install kind && \
		kind --version
install_kubectl:
		choco install kubernetes-cli && \
		kubectl version --client && \
		cd ~ && \
		mkdir .kube && \
		cd .kube && \
		New-Item config -type file
create_kind_cluster: install_kubectl install_kind create_docker_registry
		kind create cluster --name docker && \
		kubeclt get nodes
create_docker_registry:
		if ! docker ps | grep -q 'local-registry'; \
		then docker run -d -p 5000:5000 --name local-registry --restart=always registry:2; \
		else echo "---> local-registry is already running. There's nothing to do here."; \
		fi