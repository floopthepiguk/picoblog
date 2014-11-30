picoblog
========

pico-blogging software

# Creating a Development Environment 

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

