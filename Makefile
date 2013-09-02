help:
	@echo "toy <command> [<options...>]"
	@echo
	@echo "toy clone <repository url>"
clone:
	git clone $(PARAM1)
install_to_bash:
	@echo 'function toys {' >> ~/.bash_profile
	@echo '	make -f ~/toys/Makefile $$1 PARAM1=$$2 PARAM2=$$3 PARAM3=$$4 PARAM4=$$5 PARAM5=$$6 PARAM6=$$7' >> ~/.bash_profile
	@echo '}' >> ~/.bash_profile
