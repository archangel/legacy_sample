# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")

  "https://github.com/#{repo_name}.git"
end

gem "pg", "~> 0.18"
gem "puma", "~> 3.7"
gem "rails", "~> 5.1.1"

gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"

# gem "bcrypt", "~> 3.1.7"
# gem "therubyracer", platforms: :ruby

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development do
  gem "listen", "~> 3.1.5"
  gem "rubocop", "~> 0.49.1"
  gem "web-console", ">= 3.3.0"
end

group :development, :test do
  gem "pry-byebug", "~> 3.4.2"
  gem "sqlite3", ">= 1.3.0", platforms: %i[ruby mswin mswin64 mingw x64_mingw]
end

gem "archangel", github: "archangel/archangel"
# gem "archangel", path: "../archangel"
