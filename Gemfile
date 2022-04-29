source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0", ">= 7.0.2.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.6", ">= 5.6.2"
gem "vite_rails"
gem "sass-rails", "~> 6.0"
gem "pico-rails", "~> 1.4", ">= 1.4.4"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails", "~> 5.0", ">= 5.0.2"
  gem "factory_bot_rails", "~> 6.2"  
end

group :development do
  gem "better_errors", "~> 2.9", ">= 2.9.1"
end

group :test do
  gem "capybara", "~> 3.36"
  gem "selenium-webdriver", "~> 4.1"
  gem "webdrivers", "~> 5.0"
  gem "simplecov", "~> 0.21.2"
  gem "simplecov_json_formatter", "~> 0.1.3"
end
