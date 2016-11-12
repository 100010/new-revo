source 'https://rubygems.org'


gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg'
gem 'unicorn', '~> 3.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "haml-rails"

#for image uploader
gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'
gem 'mini_magick'

#for notification
gem 'exception_notification'
gem 'slack-notifier'

#for seo
gem 'meta-tags'

#for ui
gem 'bootstrap-sass'
gem "font-awesome-rails"
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'sass-rails'

#for rails console
gem 'rb-readline'

source 'https://rails-assets.org' do
  gem 'rails-assets-toastr'
  gem 'rails-assets-flexslider'
end


# for deployment
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
group :development, :test do
  gem 'pry-rails'
  gem 'annotate'
  gem 'binding_of_caller'
  gem 'bullet'
end

group :development do
  gem 'capistrano3-puma'
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'better_errors'
  gem 'pry'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
