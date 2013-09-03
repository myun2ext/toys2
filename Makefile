help:
	@echo "toy <command> [<options...>]"
	@echo
	@echo "toy clone <repository url>"
clone:
	git clone $(PARAM1)
get:
	@echo Create Directory for $(PARAM1)
	@mkdir -p $(PARAM1)
	@cd $(PARAM1); git clone https://github.com/$(PARAM1)/$(PARAM2).git
install_to_bash:
	@echo 'function toys {' >> ~/.bash_profile
	@echo '	make -f ~/toys/Makefile $$1 PARAM1=$$2 PARAM2=$$3 PARAM3=$$4 PARAM4=$$5 PARAM5=$$6 PARAM6=$$7' >> ~/.bash_profile
	@echo '}' >> ~/.bash_profile
