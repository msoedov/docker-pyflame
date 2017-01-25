REPO = msoedov/pyflame

default: flamegraph.pl template build


build:
	for number in 2.7 3.5 3.6 ; do \
		docker build -t $(REPO):$$number -f $$number.Dockerfile .; \
	done

push:
	for tag in 2.7 3.5 3.6 ; do \
		docker push $(REPO):$$tag; \
	done

flamegraph.pl:
	@wget https://raw.githubusercontent.com/brendangregg/FlameGraph/master/flamegraph.pl
	@chmod +x flamegraph.pl

template:
	@./template.sh
