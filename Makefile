.PHONY: do_all

all: do_all

clean:
	git clean -df

do_all:
	@$(MAKE) --no-print-directory -C ./src/ do_all
