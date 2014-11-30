picoblog
========

pico-blogging software

# Getting a dev environment set up

Clone the repo, then: 

```
cd picoblog
bundle install
rake db:migrate
```

You can then optionally create some dummy users and posts with:

```
rails g dummy_data
```

