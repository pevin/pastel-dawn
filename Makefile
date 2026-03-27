.PHONY: extras format check

extras:
	$(or $(shell which lua 2>/dev/null),$(shell which luajit 2>/dev/null),lua) scripts/generate.lua

format:
	stylua lua/ --check || stylua lua/

check:
	stylua lua/ --check
