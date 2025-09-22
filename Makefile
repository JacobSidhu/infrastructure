TF ?= terraform

.PHONY: init fmt validate plan apply clean

init:
	$(TF) init

fmt:
	$(TF) fmt -recursive

validate: init
	$(TF) validate

plan: validate
	$(TF) plan

apply:
	$(TF) apply

clean:
	rm -rf .terraform .terraform.lock.hcl
