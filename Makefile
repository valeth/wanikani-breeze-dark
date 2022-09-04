BUNDLER := docker run -it --rm -v `pwd`:/usr/src/app artemigos/scss_rake_guard bundler

compiled: src project.json
	@$(BUNDLER) exec rake
	@touch -m $@

compile: compiled

lint:
	@$(BUNDLER) exec rake test

watch:
	@$(BUNDLER) exec guard

.PHONY: compile lint watch
