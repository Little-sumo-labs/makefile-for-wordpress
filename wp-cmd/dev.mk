.PHONY: create-plugin create-theme delete-plugin delete-theme
# Commandes pour le développement

name?=my-creation
test?=no
sass?=yes

create-plugin: ##@dev plugin creation for Wordpress (param: name, test)
ifeq ($(test),yes)
	wp scaffold plugin $(name) --plugin_name=$(name) --activate --force
	make composer-require
	make composer-install
else
	wp scaffold plugin $(name) --plugin_name=$(name) --skip-tests --activate --force
endif

create-theme: ##@dev theme creation for Wordpress (param: name, sass, test)
ifeq ($(sass),yes)
	wp scaffold _s $(name) --theme_name=$(name) --activate --sassify --force
else ifeq ($(sass),no)
	wp scaffold _s $(name) --theme_name=$(name) --activate --force
endif
ifeq ($(test),yes)
	wp scaffold theme-tests $(name)
endif

delete-plugin: ##@dev Deleting existing plugin
	wp plugin deactivate $(name)
	wp plugin delete $(name)

delete-theme: ##@dev Deleting existing theme
	wp theme delete $(name)
