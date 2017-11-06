source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.3'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'turbolinks'
gem 'jquery-rails'
gem 'omniauth'
gem 'omniauth-linkedin-oauth2', git: 'https://github.com/Devato/omniauth-linkedin-oauth2.git'
gem 'chart-js-rails'
gem 'figaro'
gem 'active_model_serializers'
gem 'literate_randomizer'
gem 'faker'
gem 'font-awesome-rails'
gem 'material_icons'
gem 'bootstrap-social-rails'
gem 'bootstrap_form'
gem 'newrelic_rpm'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'rspec-pride'
  gem 'pry-rails'
  gem 'capybara'
  gem "factory_bot_rails"
  gem 'database_cleaner'
  gem 'pry'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'simplecov'
  gem 'vcr'
  gem 'webmock'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
