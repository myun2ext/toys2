localdir		= $(shell pwd)
github_url		= "https://github.com"
toys_dir		= "~/toys"
help:
	@echo -e "\e[36m--- Toy v-0.1 ---\e[0m"
	@echo "toy <command> [<options...>]"
	@echo
	@echo "toy clone <repository url>"
	@echo "toy get <Github User Name> <Github User Project Name>"
	@echo "toy create <Project Language> <Project Name>"
clone:
	git clone $(PARAM1)
get:
	@echo Create Directory for $(PARAM1)
	@mkdir -p $(PARAM1)
	@cd $(PARAM1); git clone $(github_url)/$(PARAM1)/$(PARAM2).git
update:
	git pull
push:
	git push
create:
	@cd $(toys_dir)/template; make create PJLANG=$(PARAM1) TARGETDIR=$(localdir)
install_to_bash:
	@echo 'function toys {' >> ~/.bash_profile
	@echo '	make -f $(toys_dir)/Makefile $$1 PARAM1=$$2 PARAM2=$$3 PARAM3=$$4 PARAM4=$$5 PARAM5=$$6 PARAM6=$$7' >> ~/.bash_profile
	@echo '}' >> ~/.bash_profile
