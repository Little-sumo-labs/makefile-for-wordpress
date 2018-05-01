.PHONY: wp-install wp-clean
# Wordpress

wp-install: ##@wordpress Installing a Wordpress project via wp-cli.yml
	wp core download
	wp core config
	wp db create
	wp core install
	wp rewrite structure --hard
	wp rewrite flush --hard

wp-clean: ##@wordpress deleting all WP files
	wp db drop --yes

	rm -rf wp-admin wp-content wp-includes readme.html license.txt wp-activate.php wp-config-sample.php wp-login.php wp-trackback.php wp-blog-header.php wp-cron.php wp-mail.php wp-comments-post.php wp-links-opml.php wp-settings.php wp-load.php wp-signup.php xmlrpc.php index.php

	rm wp-config.php .htaccess
	echo "Projet supprimé à 100%"