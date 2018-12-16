create_file '.ruby-gemset' do
  "ruby_koans"
end
remove_file 'README.doc'
create_file 'README.md'
remove_file 'app/assets/stylesheets/application.css'
create_file 'app/assets/stylesheets/application.scss' do
<<SCSS
@import "bootstrap";
@import "font-awesome";
SCSS
end
create_file 'app/assets/javascripts/application.js' do
<<JS
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require activestorage
//= require turbolinks
//= require_tree .
JS
end

gem 'rspec-rails'
gem 'slim'
gem 'slim-rails'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.1.3'
gem "font-awesome-rails"
run 'bundle install'
generate 'rspec:install'
git :init
git add: '--all', commit: '-m "Initial Commit" '
