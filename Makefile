.DEFAULT_GOAL := help

KATEX_VERSION := 0.16.9
MERMAID_VERSION := 10.9.1

KATEX_DIST := https://cdn.jsdelivr.net/npm/katex@$(KATEX_VERSION)/dist
MERMAID_DIST := https://cdn.jsdelivr.net/npm/mermaid@$(MERMAID_VERSION)/dist

KATEX_DIR := static/libs/katex
MERMAID_DIR := static/libs/mermaid

.PHONY: help
help: ## Show this help
	@echo "Available targets:"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_.-]+:.*##/ {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: dev
dev: ## Start Hugo dev server for exampleSite
	hugo server --source exampleSite --themesDir=../.. \
		--openBrowser --enableGitInfo --navigateToChanged --disableFastRender

.PHONY: build
build: ## Build exampleSite with minification
	hugo --gc --minify --source exampleSite --themesDir=../..

.PHONY: katex
katex: ## Download KaTeX assets
	@echo "Downloading KaTeX $(KATEX_VERSION)..."
	mkdir -p $(KATEX_DIR)/fonts
	curl -sSL $(KATEX_DIST)/katex.min.js -o $(KATEX_DIR)/katex.min.v$(KATEX_VERSION).js
	curl -sSL $(KATEX_DIST)/katex.min.css -o $(KATEX_DIR)/katex.min.v$(KATEX_VERSION).css
	curl -sSL $(KATEX_DIST)/contrib/auto-render.min.js -o $(KATEX_DIR)/auto-render.v$(KATEX_VERSION).js
	@for font in \
		KaTeX_Main-Regular.woff2 \
		KaTeX_Size1-Regular.woff2 \
		KaTeX_Size2-Regular.woff2 \
		KaTeX_Math-Italic.woff2; do \
		curl -sSL $(KATEX_DIST)/fonts/$$font -o $(KATEX_DIR)/fonts/$$font; \
	done
	@echo "KaTeX downloaded."

.PHONY: mermaid
mermaid: ## Download Mermaid assets
	@echo "Downloading Mermaid $(MERMAID_VERSION)..."
	mkdir -p $(MERMAID_DIR)
	curl -sSL $(MERMAID_DIST)/mermaid.min.js -o $(MERMAID_DIR)/mermaid.min.v$(MERMAID_VERSION).js
	@echo "Mermaid downloaded."

.PHONY: clean
clean: ## Remove downloaded assets
	rm -rf $(KATEX_DIR) $(MERMAID_DIR)
	@echo "Cleaned."
