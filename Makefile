.SILENT:
.PHONY: all install uninstall clean dist
.DEFAULT_GOAL= help

include .env
include wp-cmd/*.mk

all: ##@install installs all the necessary software
	make ginit
	composer init
	make composer-require
	make composer-install
	make wpcli-install

install: ##@install Complete installation of a WP site
	cp wp-conf/$(env)-wp-cli.yml wp-cli.yml
	make wp-install
	make wp-empty
	make update-third-part

uninstall: ##@install Destroys files created during WP installation
	make wp-clean
	rm wp-cli.yml

clean: ##@install Cleaning the WP project
	make composer-clean
	rm -fr .git
	sudo rm /usr/local/bin/wp

dist:  ##@install Archiving WP project files
	zip -r wordpress.zip wp-admin wp-content wp-includes readme.html license.txt wp-activate.php wp-config-sample.php wp-login.php wp-trackback.php wp-blog-header.php wp-cron.php wp-mail.php wp-comments-post.php wp-links-opml.php wp-settings.php wp-load.php wp-signup.php xmlrpc.php index.php wp-config.php .htaccess
	mv wordpress.zip wp-draft/