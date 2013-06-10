require 'rubygems'
require 'bundler/setup'
require 'celluloid/autostart'
require 'celluloid/rspec'
Celluloid.shutdown_timeout = 1

Dir['./spec/support/*.rb'].map {|f| require f }
Dir['./lib/*.rb'].map {|f| require f }

RSpec.configure do |config|
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true

  config.before do |example|
    Celluloid.shutdown
    Celluloid.boot
  end

  ActionMailer::Base.delivery_method = :test
  ActionMailer::Base.perform_deliveries = false
end