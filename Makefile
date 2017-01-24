REPO = msoedov/pyflame

default: build_2 build_3

build_2:
	@docker build -t $(REPO):2.7 .

build_3:
	@docker build -t $(REPO):3.5 -f Dockerfile.py3 .


publish:
	@docker push $(REPO):2.7
	@docker push $(REPO):3.5
