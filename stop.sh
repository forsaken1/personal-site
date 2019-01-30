[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

cd /home/forsaken/apps/personal-site
thin stop -C /etc/thin/personal_site.yml
