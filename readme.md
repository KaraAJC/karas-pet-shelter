# Pet Shelter

We want to create a pet shelter that holds the following info:

pets
name - string req
species - string req
age - int


owners
name - string req
email - string

adoptions
owner_id integer req
pet_id integer req
date date req
cost integer default=0

STEPS:
 ## Schema
  TALK IT OUT!

  Then...

 ```
 $ bundle install
 $ rake db:drop APP_ENV=test
 $ rake db:create APP_ENV=test
 ```
 ## Migrate
 $ touch date_create_table.rb
 $ rake db:migrate APP_ENV=test

 ## Model
 ## Validate
 ## Associate
 ## Seed
 ## Query

```
$ rake db:drop APP_ENV=test
$ rake db:create APP_ENV=test
$ rake db:migrate APP_ENV=test
$ rake db:seed APP_ENV=test
```

Fortunately, multiple rake tasks can be combined into a single command:

```
$ rake db:drop db:create db:migrate db:seed APP_ENV=test
```

> We specify `APP_ENV=test` because we're going to be working with the test database, not in the development console. If you want to create a database in the development environment, you can drop the `APP_ENV=test` - it defaults to development. Specifically, that would look like:

```
$ rake db:drop db:create db:migrate db:seed
```

You goal is to get all the tests passing:

```
rspec spec/product_crud_spec.rb
```

The `ProductCrud` class has a number of methods for you to implement. As you work, follow the spec file & review the method names carefully. Every method can be implemented with ActiveRecord alone.

You can find the methods for ActiveRecord [here](http://guides.rubyonrails.org/active_record_querying.html)