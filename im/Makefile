.PHONY: do_all

all: do_all

clean:
	cd src && $(MAKE) -f ../tecmake.mak clean clean-extra

do_all:
	@$(MAKE) --no-print-directory -C ./src/ do_all
