ENV['RAILS_ENV'] = ENV['RSPEC_RAILS_ENV'] || 'test'

if ENV['RSPEC_RCOV_ENABLED'] && RUBY_VERSION > "1.9"
  require 'simplecov'
  SimpleCov.start 'rails'
  SimpleCov.coverage_dir 'coverage'
end

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.include Shoulda::ActionController::Matchers
  config.include Shoulda::ActiveRecord::Matchers
  config.include Shoulda::ActionMailer::Matchers
  config.with_options(:example_group => { :file_path => /\bspec\/controllers\// }) do |controller_group_config|
    controller_group_config.include Devise::TestHelpers
    controller_group_config.include AuthenticationMacros
    controller_group_config.include RoutingMacros
  end

  config.use_transactional_fixtures = true
  config.mock_with :rspec
end
