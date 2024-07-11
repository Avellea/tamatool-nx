LINUX_PROJECT = linux
WINDOWS_PROJECT = windows
MAC_PROJECT = mac

SWITCH_PROJECT = switch

ICONS_FOLDER = icons

all: switch
# The mac target requires an actual Mac

linux:
	@$(MAKE) -C $(LINUX_PROJECT) dist

linux-clean:
	@$(MAKE) -C $(LINUX_PROJECT) clean-all

switch:
	@$(MAKE) -C $(SWITCH_PROJECT) all

switch-clean:
	@$(MAKE) -C $(SWITCH_PROJECT) clean

windows:
	@$(MAKE) -C $(WINDOWS_PROJECT) dist

windows-clean:
	@$(MAKE) -C $(WINDOWS_PROJECT) clean-all

mac:
	@$(MAKE) -C $(MAC_PROJECT) dist

mac-clean:
	@$(MAKE) -C $(MAC_PROJECT) clean-all

icons:
	@$(MAKE) -C $(ICONS_FOLDER) install

clean: switch-clean

.PHONY: all switch-clean switch linux linux-clean windows windows-clean mac mac-clean icons clean
