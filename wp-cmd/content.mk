.PHONY: wp-content wp-articles wp-comment wp-page wp-themes wp-plugins wp-empty wp-user
# Gestion des contenus du site

pages = Accueil Blog Réalisation Contact

wp-content:
	make wp-empty
	make wp-themes && make wp-plugins
	make wp-user
	make wp-articles
	make wp-page
	make wp-comment

wp-articles: ##@content Génère des pages avec de faux contenu
	curl http://loripsum.net/api/5 | wp post generate --post_content --count=30

wp-themes: ##@content Installing themes
	wp theme install oblique --activate

wp-plugins: ##@content Installing plugins
	wp plugin install nivo-slider-lite themeisle-companion pirate-forms --activate

wp-comment: ##@content  Add Blog comments
	for i in `seq 1 30`; \
	do \
		wp comment create --comment_post_ID=$$i --comment_content="hello blog" --comment_author="wp-cli"; \
	done

wp-page: ##@content Generate several pages with false content
	$(foreach title,$(pages), \
	curl http://loripsum.net/api/5 | \
	wp post generate --post_type=page --post_title='$(title)' --post_status=publish \
	 --post_content --count=1;)

wp-empty: ##@content completely empty the contents of the site
	wp site empty --yes ## Empties a site of its content (posts, comments, terms, and meta).
	rm -rf wp-content/uploads/

wp-user: ##@content Adds users for different levels of administrations
	wp user create ann ann@example.com --role=editor --user_pass=annedit --porcelain
	wp user create bob bob@example.com --role=author --user_pass=bobauthor --porcelain
	wp user create carol carol@example.com --role=contributor --user_pass=carolcontrib --porcelain
	wp user create dave dave@example.com --role=subscriber --user_pass=davesubscribe --porcelain