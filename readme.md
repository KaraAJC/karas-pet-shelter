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

## STEPS:
 ### Schema
  TALK IT OUT!

  Then...

 ```
 $ bundle install
 $ rake db:drop APP_ENV=test
 $ rake db:create APP_ENV=test
 ```
 ### Migrate
 $ touch date_create_table.rb
 $ rake db:migrate APP_ENV=test

 ### Model
 ### Validate
 ### Associate
 ### Seed
 ```bash
 $ rake db:seed APP_ENV=test
 ```
 ### Query
 ```bash
 $ rake console APP_ENV=test
 ```