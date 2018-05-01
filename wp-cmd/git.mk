.PHONY: ginit gconf gpull gpush gstash gunstash gbrstash gclstash glstash
# Github Management

repository = https://github.com/Little-sumo-labs/makefile-for-wordpress.git
branch?=newbranch
mess?=NC

ginit: ##@git git initialization
	git init
	git remote add origin $(repository)
	git add .
	git commit -m "Initial commit"
	git push -u origin master

gconf: ##@git git configuration
	git config --global user.name "Guillaume RICHARD"
	git config --global user.email g.jf.richard@gmail.com

gpull: ##@git Fetch from and integrate with another repository or a local branch
	git pull

gpush: ##@git push the changes with a commit message (param: mess)
	git add .
	git commit -m "$(mess)"
	git push origin master

gstash: ##@git Stash the changes in a dirty working directory away
	git stash

gunstash: ##@git Recovery of the last stash
	git stash apply stash@{0}
	git stash pop

gbrstash: ##@git Creating a git branch from a stash
	git stash branch $(branch)

gclstash: ##@git delete the list of stash
	git stash clear

glstash: ##@git show the list of stash
	git stash list