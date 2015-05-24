source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'puma'
gem 'haml'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'bootstrap-sass', '3.3.4.1'

# Use jquery as the JavaScript library
gem 'jquery-rails'

group :production do
  gem 'rails_12factor'
  gem 'informant-rails'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'dotenv-rails'
  gem 'teaspoon-jasmine'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'quiet_assets'
end

group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'capybara-screenshot'
  gem 'factory_girl_rails'
  gem 'ffaker', '~> 2.0'
  gem 'shoulda-matchers', '~> 2.8',require: false
  gem 'vcr'
end