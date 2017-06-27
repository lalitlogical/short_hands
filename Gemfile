source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1', '>= 5.1.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "figaro"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'jquery-datatables-rails'
gem 'ajax-datatables-rails'
gem "figaro"
gem 'breadcrumbs_on_rails', '~> 2.3.1'
gem 'open_uri_redirections', '~> 0.2.1'
gem 'text', '~> 1.3', '>= 1.3.1'

gem 'mongoid', '~> 6.2'
gem 'kaminari', '~> 0.16.3'
gem 'kaminari-mongoid'
gem 'simple_form', '~> 3.2', '>= 3.2.1'

gem 'devise'
gem 'omniauth-google-oauth2', '~> 0.4.1'
gem 'ckeditor', '~> 4.1', '>= 4.1.6'
gem 'bootstrap-tagsinput-rails', '~> 0.4.2.1'
gem 'truncate_html', '~> 0.9.3'

# Searchkick for full-text searching & aggregation stuffs
gem 'searchkick', '~> 2.3'
gem 'oj', '~> 3.1', '>= 3.1.4'
gem 'typhoeus', '~> 1.1', '>= 1.1.2'
gem 'elasticsearch', '~> 5.0', '>= 5.0.4'

gem 'country_select', '~> 3.0'
gem "rolify"
