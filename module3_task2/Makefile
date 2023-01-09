build:	## Generate the website from the markdown and config file in dist
		hugo

clean:	## Clean up the content in dist
		rm -r dist/*

post:	## Create a new post whose file name and title from the Postname and Post title
		hugo new posts/$(POST_NAME).md
		sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint:	## check markdown and shell
		markdownlint README.md
		markdownlint DEPLOY.md
		shellcheck setup.sh >/dev/null 2>&1 || echo "Lint Failed"

markdownlint: ## updated to lint the files README.md and DEPLOY.md
		markdownlint README.md
		markdownlint DEPLOY.md

integration-tests: ## server and check the localhost
		hugo
		ls dist/

unit-tests: ## Runs different makefile recipes
		make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
		make build
		make clean

validate: ## Tests dir
		pwd

package: ## creates archive
		make build
		zip awesome-website.zip dist/	

help:	## Display the documentation of all targets
		@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
