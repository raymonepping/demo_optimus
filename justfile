default:
	@echo "Available commands: format, validate, docs"

format:
	terraform fmt -recursive

validate:
	terraform validate

docs:
	terraform-docs markdown . --output-file README.md --output-mode inject
