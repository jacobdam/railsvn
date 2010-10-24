source :gemcutter

gem 'rails', '~>3.0'
gem 'devise', :git => "git://github.com/plataformatec/devise.git", :tag => 'v1.1.rc2'
gem 'simple_form'
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
    gem 'rspec', '~>2.0'
    gem 'rspec-rails', '~>2.0'
    gem 'factory_girl_rails'
    gem 'faker'
  end
end
