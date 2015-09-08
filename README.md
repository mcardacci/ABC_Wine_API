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
4. Take note that seeding all the data from [wine.com](https://api.wine.com/) would take a very long time so I've programmed it to cut off at 1,000 records.

5. Start your rails server by typing:
```
$ bundle exec rails s
```
6. Head over into your browser and type localhost:3000 into the URL and enjoy.

## Navigating the App
1. First, fork this project on github.  You will need to create an account if you don't already have one.
1. Next, complete the project as described below within your fork.
1. Finally, push all of your changes to your fork on github and submit a pull request.  You should also email the appropriate address at Salido and your recruiter to let them know you have submitted a solution.  Make sure to include your github username in your email (so we can match people with pull requests).
1. Include in your README any assumptions or other information you want to communicate.
1. Include documentation of how to work with API calls.
