# To run the application: 
1. Clone it from this repository
1. The database is in postgres so make sure you download it [here](http://www.postgresql.org/)
1. In your terminal run:
```
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```
1. Take note that seeding all the data from [wine.com](https://api.wine.com/) would take a very long time so I've programmed it to cut off at 1,000 records.

1. Start your rails server by typing:
```
$ bundle exec rails s
```
1. Head over into your browser and type localhost:3000 into the URL and enjoy.
