build-nginx:
	docker image build -f resources/ops/docker/nginx/Dockerfile -t harbor.korporate.org/myapp/myapp-nginx:latest --target nginx .

build-fpm:
	docker image build -f resources/ops/docker/fpm/Dockerfile -t harbor.korporate.org/myapp/myapp-fpm:latest --target fpm .

push:
	docker login -u n43 -p evilP4ssw0rd harbor.korporate.org 2>/dev/null
	docker push harbor.korporate.org/myapp/myapp-nginx:latest
	docker push harbor.korporate.org/myapp/myapp-fpm:latest

deploy:
	kubectl create namespace myapp
	kubectl apply -f ./resources/ops/kubernetes/configmap.yaml -n myapp
	kubectl apply -f ./resources/ops/kubernetes/secret.yaml -n myapp
	kubectl apply -f ./resources/ops/kubernetes/mariadb.yaml -n myapp
	kubectl apply -f ./resources/ops/kubernetes/deployment.yaml -n myapp
	kubectl apply -f ./resources/ops/kubernetes/queue-worker.yaml -n myapp
	kubectl apply -f ./resources/ops/kubernetes/jobs.yaml -n myapp
	kubectl apply -f ./resources/ops/kubernetes/hpa.yaml -n myapp

all: build-nginx build-fpm push deploy

fclean:
	kubectl delete -f ./resources/ops/kubernetes/secret.yaml -n myapp
	kubectl delete -f ./resources/ops/kubernetes/configmap.yaml -n myapp
	kubectl delete -f ./resources/ops/kubernetes/queue-worker.yaml -n myapp
	kubectl delete -f ./resources/ops/kubernetes/jobs.yaml -n myapp
	kubectl delete -f ./resources/ops/kubernetes/hpa.yaml -n myapp
	kubectl delete -f ./resources/ops/kubernetes/mariadb.yaml -n myapp
	kubectl delete -f ./resources/ops/kubernetes/deployment.yaml -n myapp
	kubectl delete namespace myapp

re: fclean all
