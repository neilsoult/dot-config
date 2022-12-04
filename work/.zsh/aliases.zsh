# Alias
# ---
alias a="ansible"
alias ap="ansible-playbook"
# ALIAS COMMANDS
alias ls="exa --icons --group-directories-first"
alias ll="exa --icons --group-directories-first -l"
alias grep="grep --color"
alias gd="git checkout develop"
alias gs="git checkout staging"
alias gm="git checkout master"
# Crexi
fnd-make() {
    git checkout -b FND-"$1";
    git push origin FND-"$1";
}

fnd() {
    git checkout FND-"$1";
}

fnd-hot() {
	git checkout -b HOTFIX-FND-"$1";
	git push origin HOTFIX-FND-"$1";
}

fnd-bug() {
	git add .;
	git commit -m FND-"$1";
	git push origin FND-"$1";
	git checkout develop;
}
