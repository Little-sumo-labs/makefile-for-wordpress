.PHONY: cinstall
# Composer Management

cinstall: vendor ##@composer composer installation

vendor: composer.lock ##@composer vendor file creation
	composer install

composer.lock: composer.json ##@composer composer.lock creation
	composer update