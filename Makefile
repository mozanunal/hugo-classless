KATEX_VERSION := 0.16.9
MERMAID_VERSION := 10.9.1

KATEX_DIST := https://cdn.jsdelivr.net/npm/katex@$(KATEX_VERSION)/dist
MERMAID_DIST := https://cdn.jsdelivr.net/npm/mermaid@$(MERMAID_VERSION)/dist

KATEX_DIR := static/libs/katex
MERMAID_DIR := static/libs/mermaid

all: serve

serve:
	hugo server --source exampleSite --themesDir=../.. \
		--openBrowser --enableGitInfo --navigateToChanged --disableFastRender

build:
	hugo --gc --minify --source exampleSite --themesDir=../..

katex:
	@echo "⬇️ Downloading KaTeX $(KATEX_VERSION)..."
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
	@echo "✅ KaTeX downloaded."

mermaid:
	@echo "⬇️ Downloading Mermaid $(MERMAID_VERSION)..."
	mkdir -p $(MERMAID_DIR)
	curl -sSL $(MERMAID_DIST)/mermaid.min.js -o $(MERMAID_DIR)/mermaid.min.v$(MERMAID_VERSION).js
	@echo "✅ Mermaid downloaded."

clean:
	rm -rf $(KATEX_DIR) $(MERMAID_DIR)
	@echo "🧼 Cleaned."
