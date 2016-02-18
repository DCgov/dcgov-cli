prefix=/usr/local
BINS = $(wildcard bin/orgwide-*)
NEEDINSTALL=()
ifneq ("$(wildcard orgname)","")
		ORG=`cat orgname`
else
		ORG=dcgov
endif

default: install

install:
		@if [[ -e orgname ]]; then ORG=`cat orgname`; fi
		@echo "Installing $(ORG) command"
		@install -d -m 0755 $(prefix)/bin;
		@install -m 0755 orgwide $(prefix)/bin;
		@mv $(prefix)/bin/orgwide $(prefix)/bin/$(ORG);
		@$(foreach cmd,$(BINS), \
				echo "Installing $(subst bin/orgwide,$(ORG),$(cmd)) subcommand"; \
				install -m 0755 $(cmd) $(prefix)/bin; \
				mv $(prefix)/$(cmd) $(prefix)/$(subst orgwide,$(ORG),$(cmd)); \
		)

clean:
		@echo "Removing $(ORG) command"
		@rm $(prefix)/bin/$(ORG)
		@echo "Removing subcommands"
		@$(foreach cmd,$(BINS), \
				rm $(prefix)/$(subst orgwide,$(ORG),$(cmd)); \
		)
