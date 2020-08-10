.DEFAULT_GOAL := help

define print_error
  printf "\033[31m    [×] $1\033[m\n"
endef

define print_success
  printf "\033[32m    [✓] $1\033[m\n"
endef

define print_warning
  printf "\033[33m    [!] $1\033[m\n"
endef

define print_title
  printf "\n\n\033[35m$1\033[m\n\n"
endef

define print_list
  printf "\033[36m$1\n"
endef

install: ## Install Galaxy roles.
	@$(call print_title, Start to Install Galaxy)
	@ansible-galaxy install --force --roles-path ./roles -r requirements.yml

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
  	| sort \
    | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
