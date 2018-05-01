# Migration d'un site WP d'un serveur sur un autre
.PHONY: wp-export wp-import wp-importer

wp-export: ##@migrations export Wordpress project content
	if [ ! -d "$(BASE_PATH_TMP)" ];then \
	echo "Création du dossier tmp !"; \
	mkdir $(BASE_PATH_TMP); \
	fi
	wp db export --exclude_tables=wp_options $(DBSAVE)
	zip -r uploads.zip wp-content/uploads/
	mv $(DBSAVE) $(BASE_PATH_TMP)
	mv uploads.zip $(BASE_PATH_TMP)
	wp export --dir=$(BASE_PATH_TMP) --filename_format=wordpress-$(LOGFILE).xml

wp-import: wp-importer ##@migrations import Wordpress project content
	unzip $(BASE_PATH_TMP)/uploads.zip -d .
	wp import $(BASE_PATH_TMP)/wordpress-$(LOGFILE).xml --authors=create
	wp search-replace $(URLOLD) $(URLNEW)

wp-importer: ##@migrations installation of the wordpress-import plugin
	wp plugin install wordpress-importer --activate