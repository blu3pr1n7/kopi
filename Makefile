PROJECT_NAME := $(shell cat go.mod | grep module | sed 's/module //g' | awk '{print tolower($0)}')
PWD := $(shell pwd)
VERSION := $(shell git tag | head -n 1)
SCRIPTS_BIN = "./bin/dev"


build: clean
	go build -o $(SCRIPTS_BIN)/$(PROJECT_NAME)


clean:
	@$(SCRIPTS_BIN)/clean.bash


test: fmt
	@$(SCRIPTS_BIN)/test.bash


image: fmt
	@$(SCRIPTS_BIN)/docker.bash $(PROJECT_NAME) $(VERSION)


upgrade: fmt
	@$(SCRIPTS_BIN)/upgrade.bash $(TYPE)


fmt:
	@$(SCRIPTS_BIN)/format.bash)


install: clean fmt
	@$(SCRIPTS_BIN)/install.bash


release: clean fmt
	@$(SCRIPTS_BIN)/release.bash
