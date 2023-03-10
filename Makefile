home_path = /home/umode

build:
	docker build -t umode_brand_crawlers .
.PHONY: build

test:
	docker run umode_brand_crawlers --brand arezzo
.PHONY: test

local_test:
	docker run -v ${PWD}:$(home_path) -w $(home_path) --entrypoint "$(home_path)/crawler.sh" umode_brand_crawlers --brand arezzo
.PHONY: local_test