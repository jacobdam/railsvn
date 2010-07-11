source 'http://gemcutter.org'

gem 'rails', '3.0.0.beta4'
gem 'formtastic', :git => 'http://github.com/justinfrench/formtastic.git', :branch => 'rails3'
gem 'devise', :git => "git://github.com/plataformatec/devise.git", :tag => 'v1.1.rc2'
gem 'haml'

group :production do
  gem 'pg'
end

group :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'nifty-generators'
  gem 'rails3-generators'
end

group :test do
  gem "shoulda", :require => 'shoulda'
  # gem 'rspec', '2.0.0.beta.13'
  # gem 'rspec-rails', '2.0.0.beta.13'
  gem "rspec-rails", :git => "git://github.com/rspec/rspec-rails.git"
  gem "rspec-core", :git => "git://github.com/rspec/rspec-core.git"
  gem "rspec-expectations", :git => "git://github.com/rspec/rspec-expectations.git"
  gem "rspec-mocks", :git => "git://github.com/rspec/rspec-mocks.git"
  gem "rspec", :git => "git://github.com/rspec/rspec.git"
  gem 'factory_girl', :git => 'git://github.com/thoughtbot/factory_girl.git', :branch => 'rails3'
  gem 'faker'
end
