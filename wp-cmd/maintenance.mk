# Maintenance du site WP
.PHONY: update-core update-third-part

update-core: ##@maintenance WP version update
	wp core update --force

update-third-part: ##@maintenance update plugins, themes and translations
	wp plugin update --all
	wp theme update --all
	wp language core update