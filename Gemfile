source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails", "~> 7.0.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "vite_rails"
gem "sass-rails", "~> 6.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails", "~> 5.0", ">= 5.0.2"
end

group :development do
end

group :test do
  gem "capybara", "~> 3.36"
  gem "selenium-webdriver", "~> 4.1"
  gem "webdrivers", "~> 5.0"
  gem "simplecov", "~> 0.21.2"
  gem "simplecov_json_formatter", "~> 0.1.3"
end
