SHELL:=/bin/bash
CHAPTER=$(shell find . -mindepth 2 -maxdepth 2 -type f -name 'Makefile' -exec dirname "{}" \;)
#FCHANGED=$(shell git diff-tree --no-commit-id --name-only -r HEAD)
FCHANGED=$(shell git diff --name-only origin/main)

all:
	@echo "Specify target 'changes' to just render edited subdirs or 'all' to render all pdfs."

changes:
	@echo "Hello from the $(shell git rev-parse --abbrev-ref HEAD) branch"
	@echo "The changed files are: $(FCHANGED)"
	@for i in $(CHAPTER); do\
		DN=$$(echo $$i | sed -e "s/\.//g");\
		GLC=$$(echo $$FCHANGED | grep "slides"$$DN | grep "[.]tex" | wc -l);\
		@echo "processing $$DN";\
		if [[ $$GLC != 0 ]]; then\
			cd $$i;\
			echo "cd into $$(pwd)";\
			make slides-pdf;\
			cd ..;\
		else\
			echo "nothing todo for $$i";\
		fi;\
	done

all-pdf:
	@for i in $(CHAPTER); do\
		echo "processing $$i";\
		cd $$i;\
		echo "cd into $$(pwd)";\
		make slides-pdf;\
		cd ..;\
	done
