makefile-for-wordpress
=============
Advanced Makefile for Wordpress

## Installation
### via HTTPS
```bash
git clone https://github.com/Little-sumo-labs/makefile-for-wordpress.git
```

### via SSH
```bash
git clone git@github.com:Little-sumo-labs/makefile-for-wordpress.git
```

## How to Use it
### basic command
```bash
make
```
When you type this command, the full help list appears in the shell.
To find the function that allows this display, you can go to the next page [Add a help target to a Makefile](https://gist.github.com/prwhite/8168133)

### ... and more
To learn more about Make, I created a support in PDF format, which I put on Slideshare : [ Make (et make file) dans le cadre de wordpress](https://fr.slideshare.net/scaythe/make-et-make-file-dans-le-cadre-de-wordpress).
If you have any questions, do not hesitate to ask.
to know more about the commands contained in the makefile, make the following command in the terminal :

```bash
make help
```

the terminal will give you an order list, with target and comment

## development
* Installing Wordpress in WP-CLI Mode
* Complete removal of WP
* Migrations (export & import simple)

## Future development
* Creating blocks for gutenberg
* Creation and advanced management of plugin (Code Coverage, Grunt & Gulp)
* Creation and advanced management of theme (Code Coverage, Grunt & Gulp)
* ...

## Documentation & Useful links
### make & Makefile
* [GNU make](https://www.gnu.org/software/make/manual/make.html)
* ['make' Wikipédia](http://twig-extensions.readthedocs.io/en/latest/i18n.html)
* [Makefile tutorial](https://www.grafikart.fr/tutoriels/linux/makefile-953)
* [Add a help target to a Makefile](https://gist.github.com/prwhite/8168133)


### WP-CLI for Wordpress
* [The command line interface for WordPress](https://wp-cli.org/fr/)
* [Tuto WP-CLI : Comment installer et configurer WordPress en moins d’une minute et en seulement un clic](http://www.geekpress.fr/tuto-wp-cli-comment-installer-et-configurer-wordpress-en-moins-dune-minute-et-en-seulement-un-clic/)

### Inspiration
* [Script to assist with installing Wordpress completely from the command line](https://github.com/nexcess/wordpress-cli-installer)
* [A simple Docker based development environment for WordPress.](https://github.com/10up/wp-local-docker)
* [Wordpress: Bash Install Script](https://gist.github.com/bgallagh3r/2853221)
* [Wordpress: Bash Install Script](https://gist.github.com/chrisjlee/3278562)
* [Git commit from within a Makefile](https://unix.stackexchange.com/questions/76956/git-commit-from-within-a-makefile)

