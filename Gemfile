source 'http://gemcutter.org'

gem 'rails', '3.0.0.beta4'
gem 'formtastic', :git => 'http://github.com/justinfrench/formtastic.git', :branch => 'rails3'
gem 'devise', :git => "git://github.com/plataformatec/devise.git", :tag => 'v1.1.rc2'
gem 'haml'

group :production do
  gem 'pg'
end

# do not define group development and test on heroku environment
if ENV['USER'].nil? || !(ENV['USER'] =~ /^repo/)
  group :development do
    gem 'sqlite3-ruby', :require => 'sqlite3'
    gem 'nifty-generators'
    gem 'rails3-generators'
  end

  group :test do
    gem "shoulda", :require => 'shoulda'
    gem 'rspec', '>=2.0.0.beta.16'
    gem 'rspec-rails', '>=2.0.0.beta.16'
    gem 'factory_girl_rails'
    gem 'faker'
  end
end
