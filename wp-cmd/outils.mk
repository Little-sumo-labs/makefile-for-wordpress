.PHONY: wpcli-install
# Installation of essential tools

wpcli-install: ##@outils installation / update of 'wp-cli'
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	php wp-cli.phar --info
	chmod +x wp-cli.phar
	sudo mv wp-cli.phar /usr/local/bin/wp
	wp --info