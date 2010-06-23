source 'http://gemcutter.org'

gem 'rails', '3.0.0.beta4'
gem 'formtastic', :git => 'http://github.com/justinfrench/formtastic.git', :branch => 'rails3'
gem 'devise', :git => "git://github.com/plataformatec/devise.git"

group :production do
  gem 'pg'
end

group :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'nifty-generators'
  gem 'rails3-generators'
end

group :test do
  gem 'rspec', '2.0.0.beta.12'
  gem 'rspec-rails', '2.0.0.beta.12'
end
