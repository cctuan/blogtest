rake db:create:all
rails g cancan:ability
rails g devise:install
rails g rails_admin:install
rails g bootstrap:install
rails g simple_form:install --bootstrap

rails g redactor:install

rake db:migrate
