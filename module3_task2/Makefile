build: ## Generate the website from the markdown and config files in dist
	hugo

clean: ## Cleanup the content of dist
	rm -r dist/*

post: ## Create a new blog post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Display the documentation of all targets
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sed -n 's/^\(.*\): \(.*\)##\(.*\)/\1:\3/p'
