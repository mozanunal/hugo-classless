
serve:
	hugo server --source exampleSite --themesDir=../.. \
		--openBrowser --enableGitInfo --navigateToChanged --disableFastRender

build:
	hugo --gc --minify --source exampleSite --themesDir=../..
