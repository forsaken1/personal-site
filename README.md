# Personal page

Personal page, portfolio, projects etc.

## Run

```
bundle
ruby app.rb # run in development
thin start -s 2 -C ./config/thin.yml -R config.ru # run in production
thin restart -C ./config/thin.yml # restart in production
```
