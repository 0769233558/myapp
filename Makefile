build-nginx:
	docker image build -f resources/ops/docker/nginx/Dockerfile -t harbor.korporate.org/myapp/myapp-nginx:latest --target nginx .

build-fpm:
	docker image build -f resources/ops/docker/fpm/Dockerfile -t harbor.korporate.org/myapp/myapp-fpm:latest --target fpm .

harbor-push:
	docker login -u n43 -p evilP4ssw0rd harbor.korporate.org 2>/dev/null
	docker push harbor.korporate.org/myapp/myapp-nginx:latest
	docker push harbor.korporate.org/myapp/myapp-fpm:latest
