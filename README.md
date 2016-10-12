# personal-site

Личный сайт для портфолио и прочего

## Запуск

```
bundle
ruby app.rb # run in development
thin start -s 2 -C /etc/thin/personal_site.yml -R config.ru # run in production
thin restart -C /etc/thin/personal_site.yml # restart in production
```

## personal_site.yml

```
user: username
group: usergroup
pid: tmp/pids/thin.pid
timeout: 30
wait: 30
log: /home/username/apps/personal-site/log/production.log
max_conns: 1024
require: []
environment: production
max_persistent_conns: 512
servers: 2
onebyone: true
threaded: true
no-epoll: true
daemonize: true
socket: tmp/sockets/thin.sock
chdir: /home/username/apps/personal-site
tag: example aux
```
